# liftExpand_of

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c0aa2597-d1c8-fdc6-9e1c-e848128bf0a2",
  "kind": "theorem",
  "lexical_name": "liftExpand_of",
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
  "slug": "liftexpand-of--8790baadf097fe52e7f4de80",
  "source": {
    "blob": "81c51bcbbb76dc17fa699e96b90de188f6c8abf9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 200,
    "line": 192,
    "path": "GRWTSK/Algebra/GroupTheory/Basic/Variant8e289706b7d83a7b7bef62fe98154f9a6f8aa9c79ea5132e69cc6d923cfda228.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8790baadf097fe52e7f4de80d9f2b29bd034df5cdb0250e7755e322f2e66f6f2",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Basic/Variant8e289706b7d83a7b7bef62fe98154f9a6f8aa9c79ea5132e69cc6d923cfda228.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c0aa2597-d1c8-fdc6-9e1c-e848128bf0a2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 192–200.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem liftExpand_of {C : Sort*} {P : X → S → C}
    {hP : ∀ (r : X) (t : R) (s : S) (ht : t * s ∈ S), P r s = P (t • r) ⟨t * s, ht⟩} (r : X)
    (s : S) : liftExpand P hP (r /ₒ s) = P r s :=
  rfl

/-- A version of `liftExpand` used to simultaneously lift functions with two arguments
in `X[S⁻¹]`. -/
@[to_additive
/-- A version of `liftExpand` used to simultaneously lift functions with two arguments. -/]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Basic/Variant8e289706b7d83a7b7bef62fe98154f9a6f8aa9c79ea5132e69cc6d923cfda228.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Basic/Variant8e289706b7d83a7b7bef62fe98154f9a6f8aa9c79ea5132e69cc6d923cfda228.lean#L192).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `81c51bcbbb76dc17fa699e96b90de188f6c8abf9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
