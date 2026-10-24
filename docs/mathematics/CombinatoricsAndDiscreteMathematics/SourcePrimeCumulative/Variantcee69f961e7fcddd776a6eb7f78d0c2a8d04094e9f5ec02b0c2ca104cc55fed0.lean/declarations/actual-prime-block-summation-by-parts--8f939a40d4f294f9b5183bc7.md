# actual_prime_block_summation_by_parts

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:bf55bd0e-9e34-bf02-dd39-0cb055acfd9c",
  "kind": "theorem",
  "lexical_name": "actual_prime_block_summation_by_parts",
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
  "slug": "actual-prime-block-summation-by-parts--8f939a40d4f294f9b5183bc7",
  "source": {
    "blob": "34ae4eabc303ce6239fe00d976186eb152b6e4cd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 371,
    "line": 361,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/SourcePrimeCumulative/Variantcee69f961e7fcddd776a6eb7f78d0c2a8d04094e9f5ec02b0c2ca104cc55fed0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8f939a40d4f294f9b5183bc76e41a93234ee41354c734fd31a372d82c2c6c20f",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/SourcePrimeCumulative/Variantcee69f961e7fcddd776a6eb7f78d0c2a8d04094e9f5ec02b0c2ca104cc55fed0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:bf55bd0e-9e34-bf02-dd39-0cb055acfd9c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 361–371.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actual_prime_block_summation_by_parts (A : ℝ) (P : Finset ℕ) (p : ℕ) :
    weightedDivisors P (vaughanCutoff A / p) (fun e => divisorRemainder A (p * e)) =
      divisorRemainder A (p * (vaughanCutoff A / p)) *
        restrictedMertens P (vaughanCutoff A / p) (vaughanCutoff A / p + 1) -
      ∑ e ∈ Finset.range (vaughanCutoff A / p),
        (divisorRemainder A (p * (e + 1)) - divisorRemainder A (p * e)) *
          restrictedMertens P (vaughanCutoff A / p) (e + 1) := by
  exact weightedDivisors_summation_by_parts P (vaughanCutoff A / p)
    (fun e => divisorRemainder A (p * e))

end RH16Tandem.SourcePrimeCumulative
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/SourcePrimeCumulative/Variantcee69f961e7fcddd776a6eb7f78d0c2a8d04094e9f5ec02b0c2ca104cc55fed0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/SourcePrimeCumulative/Variantcee69f961e7fcddd776a6eb7f78d0c2a8d04094e9f5ec02b0c2ca104cc55fed0.lean#L361).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `34ae4eabc303ce6239fe00d976186eb152b6e4cd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
