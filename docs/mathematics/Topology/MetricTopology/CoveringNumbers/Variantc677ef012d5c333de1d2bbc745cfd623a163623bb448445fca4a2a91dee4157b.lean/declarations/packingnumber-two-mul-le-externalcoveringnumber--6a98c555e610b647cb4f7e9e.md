# packingNumber_two_mul_le_externalCoveringNumber

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "ac4085f88cc6ecc5c1d0a0146b17defb3bfb1d0f",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 330,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/c6/c677ef012d5c333de1d2bbc745cfd623a163623bb448445fca4a2a91dee4157b.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:92279c86-e51f-1e91-7abb-00f117acc89b",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:b7f64d6e-8929-d062-7379-dec3a46b805c",
  "kind": "theorem",
  "lexical_name": "packingNumber_two_mul_le_externalCoveringNumber",
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
  "slug": "packingnumber-two-mul-le-externalcoveringnumber--6a98c555e610b647cb4f7e9e",
  "source": {
    "blob": "ac4085f88cc6ecc5c1d0a0146b17defb3bfb1d0f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 353,
    "line": 330,
    "path": "GRWTSK/Topology/MetricTopology/CoveringNumbers/Variantc677ef012d5c333de1d2bbc745cfd623a163623bb448445fca4a2a91dee4157b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6a98c555e610b647cb4f7e9e6bbbc1586dbe881c7141a7fd168690c0c67b563a",
  "verification": {
    "reference": "docs/verification/Topology/MetricTopology/CoveringNumbers/Variantc677ef012d5c333de1d2bbc745cfd623a163623bb448445fca4a2a91dee4157b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b7f64d6e-8929-d062-7379-dec3a46b805c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 330–353.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem packingNumber_two_mul_le_externalCoveringNumber (ε : ℝ≥0) (A : Set X) :
    packingNumber (2 * ε) A ≤ externalCoveringNumber ε A := by
  simp only [packingNumber, ENNReal.coe_mul, ENNReal.coe_ofNat, externalCoveringNumber, le_iInf_iff,
    iSup_le_iff]
  intro C hC_cover D hD_subset hD_separated
  -- For each point in D, choose a point in C which is ε-close to it
  let f : D → C := fun x ↦
    ⟨(hC_cover (hD_subset x.2)).choose, (hC_cover (hD_subset x.2)).choose_spec.1⟩
  have hf' (x : D) : edist x.1 (f x) ≤ ε := (hC_cover (hD_subset x.2)).choose_spec.2
  -- `⊢ D.encard ≤ C.encard`
  -- It suffices to prove that `f` is injective
  simp only [← Set.toENat_cardinalMk]
  gcongr
  refine Cardinal.mk_le_of_injective (f := f) fun x y hxy ↦ Subtype.ext ?_
  apply Set.Pairwise.eq hD_separated x.2 y.2
  simp only [not_lt]
  calc
    edist (x : X) y ≤ edist (x : X) (f x) + edist (f x : X) y := edist_triangle ..
    _ ≤ 2 * ε := by
      rw [two_mul]
      gcongr
      · exact hf' x
      · simpa [edist_comm, hxy] using hf' y

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/CoveringNumbers/Variantc677ef012d5c333de1d2bbc745cfd623a163623bb448445fca4a2a91dee4157b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/CoveringNumbers/Variantc677ef012d5c333de1d2bbc745cfd623a163623bb448445fca4a2a91dee4157b.lean#L330).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ac4085f88cc6ecc5c1d0a0146b17defb3bfb1d0f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
