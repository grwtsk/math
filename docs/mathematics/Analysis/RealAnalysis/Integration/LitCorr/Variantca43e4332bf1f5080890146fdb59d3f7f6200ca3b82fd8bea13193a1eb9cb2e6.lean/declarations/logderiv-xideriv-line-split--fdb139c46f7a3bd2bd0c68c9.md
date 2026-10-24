# logDeriv_xiDeriv_line_split'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "6642936e98187cf5821a3af9634301cceee123fa",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 317,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/ca/ca43e4332bf1f5080890146fdb59d3f7f6200ca3b82fd8bea13193a1eb9cb2e6.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:cb690335-0bdb-30eb-9550-a14c2888bb3a",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:ab972e34-14d1-4290-b7dd-52c813e40fbe",
  "kind": "theorem",
  "lexical_name": "logDeriv_xiDeriv_line_split'",
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
  "slug": "logderiv-xideriv-line-split--fdb139c46f7a3bd2bd0c68c9",
  "source": {
    "blob": "6642936e98187cf5821a3af9634301cceee123fa",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 322,
    "line": 317,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/LitCorr/Variantca43e4332bf1f5080890146fdb59d3f7f6200ca3b82fd8bea13193a1eb9cb2e6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fdb139c46f7a3bd2bd0c68c96a1478a15b8cc33a196506c1396d0549272b05b2",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/LitCorr/Variantca43e4332bf1f5080890146fdb59d3f7f6200ca3b82fd8bea13193a1eb9cb2e6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ab972e34-14d1-4290-b7dd-52c813e40fbe`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 317–322.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem logDeriv_xiDeriv_line_split' (hF2 : XiDerivZerosInStrip) (t : ℝ) :
    logDeriv xiDeriv (((5/4:ℝ) : ℂ) + t * I) = Efn (((5/4:ℝ) : ℂ) + t * I) + dEE t := by
  rw [logDeriv_xiDeriv_eq_Efn (one_lt_re_54 t) (xiDeriv_ne_zero_line hF2 t), dEE]

/-- **ξ′ explicit formula, literature form with correction**:
Σ' m_{ρ₁} h_k(γ_{ρ₁}) = literatureRHS k + Jcorr k. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/LitCorr/Variantca43e4332bf1f5080890146fdb59d3f7f6200ca3b82fd8bea13193a1eb9cb2e6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/LitCorr/Variantca43e4332bf1f5080890146fdb59d3f7f6200ca3b82fd8bea13193a1eb9cb2e6.lean#L317).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6642936e98187cf5821a3af9634301cceee123fa` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
