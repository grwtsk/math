# torsion_unitSMul_mem_integerSet

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "4d9efdbfb803a680bf1c8089737c33a7b147a59d",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 318,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/90/906499593fe08f3e40015dd7af8ad257fdd4c9ce88ee52cd55fa0d636d1329d7.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:902c1b70-3163-20b6-2392-9d3eb628d6b7",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:ec2cd5ac-96c0-c7ef-7a2f-b4991c0d8ebe",
  "kind": "theorem",
  "lexical_name": "torsion_unitSMul_mem_integerSet",
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
  "slug": "torsion-unitsmul-mem-integerset--f472c957abf5832621b1f0ff",
  "source": {
    "blob": "4d9efdbfb803a680bf1c8089737c33a7b147a59d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 324,
    "line": 318,
    "path": "GRWTSK/NumberTheory/AlgebraicNumberTheory/FundamentalCone/Variant906499593fe08f3e40015dd7af8ad257fdd4c9ce88ee52cd55fa0d636d1329d7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f472c957abf5832621b1f0ffc6d03998ec14c007ede42e65ab482749383ec8e3",
  "verification": {
    "reference": "docs/verification/NumberTheory/AlgebraicNumberTheory/FundamentalCone/Variant906499593fe08f3e40015dd7af8ad257fdd4c9ce88ee52cd55fa0d636d1329d7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ec2cd5ac-96c0-c7ef-7a2f-b4991c0d8ebe`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 318–324.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem torsion_unitSMul_mem_integerSet {x : mixedSpace K} {ζ : (𝓞 K)ˣ} (hζ : ζ ∈ torsion K)
    (hx : x ∈ integerSet K) : ζ • x ∈ integerSet K := by
  obtain ⟨a, ⟨_, rfl⟩, rfl⟩ := (mem_integerSet.mp hx).2
  refine mem_integerSet.mpr ⟨torsion_smul_mem_of_mem hx.1 hζ, ⟨ζ * a, by simp⟩⟩

/-- The action of `torsion K` on `integerSet K`. -/
@[simps]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/AlgebraicNumberTheory/FundamentalCone/Variant906499593fe08f3e40015dd7af8ad257fdd4c9ce88ee52cd55fa0d636d1329d7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AlgebraicNumberTheory/FundamentalCone/Variant906499593fe08f3e40015dd7af8ad257fdd4c9ce88ee52cd55fa0d636d1329d7.lean#L318).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4d9efdbfb803a680bf1c8089737c33a7b147a59d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
