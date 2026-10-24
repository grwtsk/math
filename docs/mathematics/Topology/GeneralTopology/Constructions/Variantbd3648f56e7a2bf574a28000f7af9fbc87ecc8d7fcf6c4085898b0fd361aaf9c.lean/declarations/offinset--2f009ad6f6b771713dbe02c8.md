# ofFinset

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:202ff9d5dd452a7d028640c5d6ff6e40ad9028be1076ae0a33946bf458e89388",
  "kind": "def",
  "lexical_name": "ofFinset",
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
  "slug": "offinset--2f009ad6f6b771713dbe02c8",
  "source": {
    "blob": "89faa381448f6efecb8bd58081bb18014a8df7a7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 173,
    "line": 167,
    "path": "GRWTSK/Topology/GeneralTopology/Constructions/Variantbd3648f56e7a2bf574a28000f7af9fbc87ecc8d7fcf6c4085898b0fd361aaf9c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:2f009ad6f6b771713dbe02c833c8395c40c908f2fce9e4f4917bc5648b27aacb",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Constructions/Variantbd3648f56e7a2bf574a28000f7af9fbc87ecc8d7fcf6c4085898b0fd361aaf9c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:202ff9d5dd452a7d028640c5d6ff6e40ad9028be1076ae0a33946bf458e89388`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 167–173.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def ofFinset (f : α → ℝ≥0∞) (s : Finset α) (h : ∑ a ∈ s, f a = 1)
    (h' : ∀ (a) (_ : a ∉ s), f a = 0) : PMF α :=
  ⟨f, h ▸ hasSum_sum_of_ne_finset_zero h'⟩

variable {f : α → ℝ≥0∞} {s : Finset α} (h : ∑ a ∈ s, f a = 1) (h' : ∀ (a) (_ : a ∉ s), f a = 0)

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Constructions/Variantbd3648f56e7a2bf574a28000f7af9fbc87ecc8d7fcf6c4085898b0fd361aaf9c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Constructions/Variantbd3648f56e7a2bf574a28000f7af9fbc87ecc8d7fcf6c4085898b0fd361aaf9c.lean#L167).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `89faa381448f6efecb8bd58081bb18014a8df7a7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
