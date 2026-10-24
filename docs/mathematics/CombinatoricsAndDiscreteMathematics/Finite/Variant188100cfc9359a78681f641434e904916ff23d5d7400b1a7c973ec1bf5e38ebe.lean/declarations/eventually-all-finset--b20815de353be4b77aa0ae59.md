# eventually_all_finset

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a358fe5a-bb2f-8f10-1056-843d02c4371a",
  "kind": "theorem",
  "lexical_name": "eventually_all_finset",
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
  "slug": "eventually-all-finset--b20815de353be4b77aa0ae59",
  "source": {
    "blob": "e4364c813a551c8106860047af0879082c75d923",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 293,
    "line": 277,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Finite/Variant188100cfc9359a78681f641434e904916ff23d5d7400b1a7c973ec1bf5e38ebe.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b20815de353be4b77aa0ae5962cc1221b7d470deb9848cbd02d4dcaec658053b",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Finite/Variant188100cfc9359a78681f641434e904916ff23d5d7400b1a7c973ec1bf5e38ebe.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a358fe5a-bb2f-8f10-1056-843d02c4371a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 277–293.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[simp] theorem eventually_all_finset {ι} (I : Finset ι) {l} {p : ι → α → Prop} :
    (∀ᶠ x in l, ∀ i ∈ I, p i x) ↔ ∀ i ∈ I, ∀ᶠ x in l, p i x :=
  I.finite_toSet.eventually_all

alias _root_.Finset.eventually_all := eventually_all_finset

-- attribute [protected] Finset.eventually_all

/-!
### Relation “eventually equal”
-/

section EventuallyEq
variable {l : Filter α} {f g : α → β}

variable {l : Filter α}

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Finite/Variant188100cfc9359a78681f641434e904916ff23d5d7400b1a7c973ec1bf5e38ebe.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Finite/Variant188100cfc9359a78681f641434e904916ff23d5d7400b1a7c973ec1bf5e38ebe.lean#L277).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e4364c813a551c8106860047af0879082c75d923` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
