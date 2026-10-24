# Multipliable.tprod_finsetProd

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:82c69056-bb89-d2a2-6cf8-c14cb370c351",
  "kind": "theorem",
  "lexical_name": "Multipliable.tprod_finsetProd",
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
  "slug": "multipliable-tprod-finsetprod--1d7354be7bbe8c496801bf52",
  "source": {
    "blob": "af74f50b39b8b9faf8480110a70a877d90262fe8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 593,
    "line": 579,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Basic/Varianta0ae451e96f2f1887943649a6e9b6f5358469b49663ab399f0c3a1bb0d54ff87.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1d7354be7bbe8c496801bf52bc8e61368957ced75962faa4a39ab98dd71afae8",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Basic/Varianta0ae451e96f2f1887943649a6e9b6f5358469b49663ab399f0c3a1bb0d54ff87.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:82c69056-bb89-d2a2-6cf8-c14cb370c351`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 579–593.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
protected theorem Multipliable.tprod_finsetProd {f : γ → β → α} {s : Finset γ}
    (hf : ∀ i ∈ s, Multipliable (f i)) : ∏' b, ∏ i ∈ s, f i b = ∏ i ∈ s, ∏' b, f i b :=
  (hasProd_prod fun i hi ↦ (hf i hi).hasProd).tprod_eq

@[deprecated (since := "2025-02-13")]
  alias tprod_of_prod := Multipliable.tprod_finsetProd

@[deprecated (since := "2025-04-12")] alias tsum_finsetSum := Summable.tsum_finsetSum
@[to_additive existing, deprecated (since := "2025-04-12")] alias tprod_finsetProd :=
  Multipliable.tprod_finsetProd

/-- Version of `tprod_eq_mul_tprod_ite` for `CommMonoid` rather than `CommGroup`.
Requires a different convergence assumption involving `Function.update`. -/
@[to_additive "Version of `tsum_eq_add_tsum_ite` for `AddCommMonoid` rather than `AddCommGroup`.
Requires a different convergence assumption involving `Function.update`."]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Basic/Varianta0ae451e96f2f1887943649a6e9b6f5358469b49663ab399f0c3a1bb0d54ff87.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Basic/Varianta0ae451e96f2f1887943649a6e9b6f5358469b49663ab399f0c3a1bb0d54ff87.lean#L579).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `af74f50b39b8b9faf8480110a70a877d90262fe8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
