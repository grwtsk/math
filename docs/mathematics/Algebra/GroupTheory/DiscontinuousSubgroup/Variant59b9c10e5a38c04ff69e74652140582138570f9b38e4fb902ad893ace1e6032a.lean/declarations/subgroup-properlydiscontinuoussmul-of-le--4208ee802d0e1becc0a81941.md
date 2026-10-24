# Subgroup.properlyDiscontinuousSMul_of_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b8ef82cd-879a-db38-17cd-7bd1bb4c9137",
  "kind": "lemma",
  "lexical_name": "Subgroup.properlyDiscontinuousSMul_of_le",
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
  "slug": "subgroup-properlydiscontinuoussmul-of-le--4208ee802d0e1becc0a81941",
  "source": {
    "blob": "05289db960e901f1787677899ec22ac9c4f7414b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 50,
    "line": 42,
    "path": "GRWTSK/Algebra/GroupTheory/DiscontinuousSubgroup/Variant59b9c10e5a38c04ff69e74652140582138570f9b38e4fb902ad893ace1e6032a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4208ee802d0e1becc0a81941080bce9b052b2030a9083b7327f0ff18fa1cfefc",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/DiscontinuousSubgroup/Variant59b9c10e5a38c04ff69e74652140582138570f9b38e4fb902ad893ace1e6032a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b8ef82cd-879a-db38-17cd-7bd1bb4c9137`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 42–50.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma Subgroup.properlyDiscontinuousSMul_of_le
    [SMul Γ α] {G H : Subgroup Γ} (hG : ProperlyDiscontinuousSMul G α) (hGH : H ≤ G) :
    ProperlyDiscontinuousSMul H α := by
  rw [Subgroup.properlyDiscontinuousSMul_iff] at hG ⊢
  intro K L hK hL
  exact (hG hK hL).subset fun _ ⟨hg, hg'⟩ ↦ ⟨hGH hg, hg'⟩

/-- If `Γ` acts properly discontinuously, so does every subgroup of `Γ`. -/
@[to_additive /-- If `Γ` acts properly discontinuously, so does every additive subgroup of `Γ`. -/]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/DiscontinuousSubgroup/Variant59b9c10e5a38c04ff69e74652140582138570f9b38e4fb902ad893ace1e6032a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/DiscontinuousSubgroup/Variant59b9c10e5a38c04ff69e74652140582138570f9b38e4fb902ad893ace1e6032a.lean#L42).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `05289db960e901f1787677899ec22ac9c4f7414b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
