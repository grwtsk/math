# inductionOn

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c2401399-42cd-4b0d-fd21-2af0425e31ad",
  "kind": "theorem",
  "lexical_name": "inductionOn",
  "mathematical_admission": "NOT_CLAIMED",
  "metrics": [
    {
      "coverage": "No exact-source compiler-observed verification dependency graph supplied.",
      "id": "spectral_log_volume",
      "profile": "docs/reference/ranking-profile.json",
      "profile_id": "spectral-volume-radius3-v1",
      "profile_sha256": "f8800b2ae8ab1d08df856bc79abc53dbafa1cbd922963b7247e927bf0ed9afd6",
      "radius": 3,
      "reason": "verification_dependency_graph_unavailable",
      "status": "UNAVAILABLE",
      "value": null
    }
  ],
  "schema": "grwtsk.source-declaration-article/1",
  "slug": "inductionon--8a5ead0eabdcb6e94b3ecc3a",
  "source": {
    "blob": "7f066f080cd3f73ef3647a41e00f0bd2f2d6400c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 278,
    "line": 269,
    "path": "GRWTSK/Algebra/GroupTheory/Basic/Variant890118ac6378116ea3e330152e958c8b7e78263a700882063ff06cebe0ad2d04.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8a5ead0eabdcb6e94b3ecc3acb555f06ff824638664980fd063cf5a0cf9acb85",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Basic/Variant890118ac6378116ea3e330152e958c8b7e78263a700882063ff06cebe0ad2d04.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c2401399-42cd-4b0d-fd21-2af0425e31ad`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 269–278.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
protected theorem inductionOn {motive : FreeMonoid α → Prop} (z : FreeMonoid α) (one : motive 1)
    (of : ∀ (x : α), motive (FreeMonoid.of x))
    (mul : ∀ (x y : FreeMonoid α), motive x → motive y → motive (x * y)) :
    motive z :=
  recOn z one fun x xs ih => mul (.of x) xs (of x) ih

/-- An induction principle for free monoids which mirrors induction on lists, with cases analogous
to the empty list and cons -/
@[to_additive (attr := elab_as_elim) /-- An induction principle for free monoids which mirrors
induction on lists, with cases analogous to the empty list and cons -/]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Basic/Variant890118ac6378116ea3e330152e958c8b7e78263a700882063ff06cebe0ad2d04.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Basic/Variant890118ac6378116ea3e330152e958c8b7e78263a700882063ff06cebe0ad2d04.lean#L269).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7f066f080cd3f73ef3647a41e00f0bd2f2d6400c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
