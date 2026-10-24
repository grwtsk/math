# mem_primesDyadicStrip_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c76ae381-4391-d5fa-4a20-3776d154d75a",
  "kind": "theorem",
  "lexical_name": "mem_primesDyadicStrip_iff",
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
  "slug": "mem-primesdyadicstrip-iff--0687e135ca29629dc83d291e",
  "source": {
    "blob": "80e914bb1b60c65174593635448ca46c797f413f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 58,
    "line": 47,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/PsiBinomialBridge/Variant4190183f5fa9a9c35ea909b5f3fc2e36855dd947d4b15ca187e06406d0fe9c3d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0687e135ca29629dc83d291eb265b3588656dd6ba1777ce37dc8e4518ae45fe0",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/PsiBinomialBridge/Variant4190183f5fa9a9c35ea909b5f3fc2e36855dd947d4b15ca187e06406d0fe9c3d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c76ae381-4391-d5fa-4a20-3776d154d75a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 47–58.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mem_primesDyadicStrip_iff
    {n p : Nat} :
    p ∈ primesDyadicStrip n ↔ Nat.Prime p ∧ n < p ∧ p ≤ 2 * n := by
  unfold primesDyadicStrip
  constructor
  · intro h
    have hh := Finset.mem_filter.mp h
    exact ⟨primesUpTo_prime hh.1, hh.2, (mem_primesUpTo_iff.mp hh.1).2⟩
  · intro h
    exact Finset.mem_filter.mpr
      ⟨mem_primesUpTo_iff.mpr ⟨h.1, h.2.2⟩, h.2.1⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/PsiBinomialBridge/Variant4190183f5fa9a9c35ea909b5f3fc2e36855dd947d4b15ca187e06406d0fe9c3d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/PsiBinomialBridge/Variant4190183f5fa9a9c35ea909b5f3fc2e36855dd947d4b15ca187e06406d0fe9c3d.lean#L47).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `80e914bb1b60c65174593635448ca46c797f413f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
