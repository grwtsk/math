# isClosedEmbedding_inclusion

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:99451931-ba8a-3f01-0c2a-33769eb35025",
  "kind": "theorem",
  "lexical_name": "isClosedEmbedding_inclusion",
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
  "slug": "isclosedembedding-inclusion--ae3dec4ccc0b6b0566bccb37",
  "source": {
    "blob": "3eef3222ec34dea3ee0b0a0364ebb9196d46c20b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 71,
    "line": 58,
    "path": "GRWTSK/Topology/GeneralTopology/StarSubalgebra/Variant7eb687a5d9741b3dd19d49c790e0721449bdcf156faa3fb57e04effd0a321b9e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ae3dec4ccc0b6b0566bccb3752121275e156e6f2d15681a7b2fa553b6cda839d",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/StarSubalgebra/Variant7eb687a5d9741b3dd19d49c790e0721449bdcf156faa3fb57e04effd0a321b9e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:99451931-ba8a-3f01-0c2a-33769eb35025`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 58–71.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isClosedEmbedding_inclusion {S₁ S₂ : StarSubalgebra R A} (h : S₁ ≤ S₂)
    (hS₁ : IsClosed (S₁ : Set A)) : IsClosedEmbedding (inclusion h) :=
  { IsEmbedding.inclusion h with
    isClosed_range := isClosed_induced_iff.2
      ⟨S₁, hS₁, by
          convert! (Set.range_subtype_map id _).symm
          · rw [Set.image_id]; rfl
          · intro _ h'
            apply h h' ⟩ }

variable [IsSemitopologicalSemiring A] [ContinuousStar A]
variable [TopologicalSpace B] [Semiring B] [Algebra R B] [StarRing B]

/-- The closure of a star subalgebra in a topological star algebra as a star subalgebra. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/StarSubalgebra/Variant7eb687a5d9741b3dd19d49c790e0721449bdcf156faa3fb57e04effd0a321b9e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/StarSubalgebra/Variant7eb687a5d9741b3dd19d49c790e0721449bdcf156faa3fb57e04effd0a321b9e.lean#L58).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3eef3222ec34dea3ee0b0a0364ebb9196d46c20b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
