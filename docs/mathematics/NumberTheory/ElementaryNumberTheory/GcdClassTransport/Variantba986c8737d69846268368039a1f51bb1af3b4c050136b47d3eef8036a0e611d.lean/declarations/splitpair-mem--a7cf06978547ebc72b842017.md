# splitPair_mem

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:055d8825-a524-1757-e3df-6c82169a54b4",
  "kind": "theorem",
  "lexical_name": "splitPair_mem",
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
  "slug": "splitpair-mem--a7cf06978547ebc72b842017",
  "source": {
    "blob": "1e3bf19ad6ff9bd4d871794742d4508966186524",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 59,
    "line": 33,
    "path": "GRWTSK/NumberTheory/ElementaryNumberTheory/GcdClassTransport/Variantba986c8737d69846268368039a1f51bb1af3b4c050136b47d3eef8036a0e611d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a7cf06978547ebc72b842017da85f1b2011e96915cea2379a80aba545e28231f",
  "verification": {
    "reference": "docs/verification/NumberTheory/ElementaryNumberTheory/GcdClassTransport/Variantba986c8737d69846268368039a1f51bb1af3b4c050136b47d3eef8036a0e611d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:055d8825-a524-1757-e3df-6c82169a54b4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 33–59.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem splitPair_mem (N : ℕ) (p : ℕ × ℕ)
    (hp : p ∈ (Icc 1 N) ×ˢ (Icc 1 N)) : splitPair p ∈ gcdClasses N := by
  obtain ⟨hp1, hp2⟩ := mem_product.mp hp
  obtain ⟨hd1, hdN⟩ := mem_Icc.mp hp1
  obtain ⟨he1, heN⟩ := mem_Icc.mp hp2
  have hd0 : 0 < p.1 := by omega
  have he0 : 0 < p.2 := by omega
  have hg0 := Nat.gcd_pos_of_pos_left p.2 hd0
  have hu0 := Nat.div_pos (Nat.gcd_le_left p.2 hd0) hg0
  have hv0 := Nat.div_pos (Nat.gcd_le_right p.1 he0) hg0
  have hmax : 0 < max (p.1 / Nat.gcd p.1 p.2) (p.2 / Nat.gcd p.1 p.2) :=
    hu0.trans_le (le_max_left _ _)
  apply mem_sigma.mpr
  constructor
  · apply mem_filter.mpr
    refine ⟨mem_product.mpr ⟨mem_Icc.mpr ⟨hu0, ?_⟩,
      mem_Icc.mpr ⟨hv0, ?_⟩⟩, Nat.coprime_div_gcd_div_gcd hg0⟩
    · exact (Nat.div_le_self _ _).trans hdN
    · exact (Nat.div_le_self _ _).trans heN
  · apply mem_Icc.mpr
    refine ⟨hg0, (Nat.le_div_iff_mul_le hmax).mpr ?_⟩
    change Nat.gcd p.1 p.2 * max (p.1 / Nat.gcd p.1 p.2)
      (p.2 / Nat.gcd p.1 p.2) ≤ N
    rw [mul_max, Nat.mul_div_cancel' (Nat.gcd_dvd_left _ _),
      Nat.mul_div_cancel' (Nat.gcd_dvd_right _ _)]
    exact max_le hdN heN

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/ElementaryNumberTheory/GcdClassTransport/Variantba986c8737d69846268368039a1f51bb1af3b4c050136b47d3eef8036a0e611d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ElementaryNumberTheory/GcdClassTransport/Variantba986c8737d69846268368039a1f51bb1af3b4c050136b47d3eef8036a0e611d.lean#L33).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1e3bf19ad6ff9bd4d871794742d4508966186524` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
