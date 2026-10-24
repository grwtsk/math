# Hom.sieve₀_le_sieve₀

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:9fa136ca-d61d-d542-94af-c68ab6eb2470",
  "kind": "lemma",
  "lexical_name": "Hom.sieve₀_le_sieve₀",
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
  "slug": "hom-sieve-le-sieve--fd8423dc6229ac61aae1a096",
  "source": {
    "blob": "cd9c26e21a5063af78a6c3abe6ee69a13dd2444b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 388,
    "line": 382,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Zero/Variant1d32f3371e1930649d3129368bb57884b613f114d32305a998702e2c85bf46c3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fd8423dc6229ac61aae1a096cdb4f8aeaec682b9e68eabf483f677b62411451e",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Zero/Variant1d32f3371e1930649d3129368bb57884b613f114d32305a998702e2c85bf46c3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9fa136ca-d61d-d542-94af-c68ab6eb2470`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 382–388.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma Hom.sieve₀_le_sieve₀ {E F : PreZeroHypercover S} (f : E.Hom F) : E.sieve₀ ≤ F.sieve₀ := by
  rw [Sieve.generate_le_iff, Presieve.ofArrows_le_iff]
  intro i
  rw [← f.w₀ i]
  apply Sieve.downward_closed
  exact Sieve.le_generate _ _ _ ⟨f.s₀ i⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Zero/Variant1d32f3371e1930649d3129368bb57884b613f114d32305a998702e2c85bf46c3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Zero/Variant1d32f3371e1930649d3129368bb57884b613f114d32305a998702e2c85bf46c3.lean#L382).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cd9c26e21a5063af78a6c3abe6ee69a13dd2444b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
