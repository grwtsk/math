# ofFunction_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5585f973-61c9-d91d-9fa9-97af4be4af19",
  "kind": "theorem",
  "lexical_name": "ofFunction_le",
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
  "slug": "offunction-le--80b732978557c8abb46c9db3",
  "source": {
    "blob": "0e14b07315fc17f7cf534c1736e086d2ac5582b0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 136,
    "line": 128,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/OfFunction/Varianta91e21d6749bdc529359ad0a774bfc277209f1731e84f9d7252ed17ee60b7628.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:80b732978557c8abb46c9db3296967a166b33836d40a5d2500d9f5d94a16f9a5",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/OfFunction/Varianta91e21d6749bdc529359ad0a774bfc277209f1731e84f9d7252ed17ee60b7628.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5585f973-61c9-d91d-9fa9-97af4be4af19`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 128–136.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem ofFunction_le (s : Set α) : OuterMeasure.ofFunction m m_empty s ≤ m s :=
  let f : ℕ → Set α := fun i => Nat.casesOn i s fun _ => ∅
  iInf_le_of_le f <|
    iInf_le_of_le (subset_iUnion f 0) <|
      le_of_eq <| tsum_eq_single 0 <| by
        rintro (_ | i)
        · simp
        · simp [f, m_empty]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/OfFunction/Varianta91e21d6749bdc529359ad0a774bfc277209f1731e84f9d7252ed17ee60b7628.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/OfFunction/Varianta91e21d6749bdc529359ad0a774bfc277209f1731e84f9d7252ed17ee60b7628.lean#L128).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0e14b07315fc17f7cf534c1736e086d2ac5582b0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
