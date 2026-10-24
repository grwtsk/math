# complete

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:834a39da-ec8a-3bf1-1c89-941c8e989edd",
  "kind": "theorem",
  "lexical_name": "complete",
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
  "slug": "complete--7b3d952a1d908d69e63eaaae",
  "source": {
    "blob": "17bf8dba0063c819164977a3440eaa3a7f0bc349",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 39,
    "line": 36,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/FactorGenerated/Variant7e73629516b06dcecdf3a65ee0ed887df6a7d09f1e0cf539dce6fb14d400d162.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7b3d952a1d908d69e63eaaaeb66fe040869bbabfe5a7a870e173caf3158d5eee",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/FactorGenerated/Variant7e73629516b06dcecdf3a65ee0ed887df6a7d09f1e0cf539dce6fb14d400d162.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:834a39da-ec8a-3bf1-1c89-941c8e989edd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 36–39.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem complete : (ExactExtraction 221 13 1 17) ∧ ((221:Nat).factorization 13 = 1) ∧ (Nat.Prime 2 ∧ ¬(2:Nat) ∣ 17) ∧ (Nat.Prime 3 ∧ ¬(3:Nat) ∣ 17) ∧ (split_0.divisor = 13 ∧ split_0.quotient = 17 ∧ (221:Nat) = 13*17) ∧ (¬Nat.Prime 221) ∧ (state_3.residual = 17 ∧ state_3.horizon = 4 ∧ state_3.extracted = (Finsupp.single 13 1 : PrimePowers) ∧ state_3.excluded = ({2,3,13} : Finset Nat)) ∧ (closed.factors = (Finsupp.single 13 1 : PrimePowers) + (Finsupp.single 17 1 : PrimePowers)) ∧ ((221:Nat).factorization = closed.factors) ∧ ((221:Nat) = primeProduct closed.factors) ∧ (closed.factors 17 = 1) := by
  exact ⟨event_0, event_0.valuation, event_1, event_2, split_0_data, split_0.composite, final_state, final_map, closed.exact, closed.reconstruction, closePrime_last_depth state_3 terminal⟩
end FactorReplay
#print axioms FactorReplay.complete
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/FactorGenerated/Variant7e73629516b06dcecdf3a65ee0ed887df6a7d09f1e0cf539dce6fb14d400d162.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/FactorGenerated/Variant7e73629516b06dcecdf3a65ee0ed887df6a7d09f1e0cf539dce6fb14d400d162.lean#L36).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `17bf8dba0063c819164977a3440eaa3a7f0bc349` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
