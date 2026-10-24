# squarePrefixBaseline_le_higherBaseline

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "1094614db9115f5beeb671a900361db0245138b0",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 90,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/7b/7b8974c71160b619fbb4ef3c333ec4c54797048f6f40c1a82f7f8a0ce0e75b8c.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:16965e01-b7e8-a5fe-0c77-63eecec2d803",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:66d9b020-8002-6038-a96e-cd7ea6d094b0",
  "kind": "theorem",
  "lexical_name": "squarePrefixBaseline_le_higherBaseline",
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
  "slug": "squareprefixbaseline-le-higherbaseline--3e5adccc529748738bc719ca",
  "source": {
    "blob": "1094614db9115f5beeb671a900361db0245138b0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 100,
    "line": 90,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourcePrimeSquareTailWork/Variant7b8974c71160b619fbb4ef3c333ec4c54797048f6f40c1a82f7f8a0ce0e75b8c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3e5adccc529748738bc719ca1dec1b4547ecbcc008a736c0913a7777f5e7cf47",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourcePrimeSquareTailWork/Variant7b8974c71160b619fbb4ef3c333ec4c54797048f6f40c1a82f7f8a0ce0e75b8c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:66d9b020-8002-6038-a96e-cd7ea6d094b0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 90–100.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem squarePrefixBaseline_le_higherBaseline :
    squarePrefixBaseline ≤ higherBaseline := by
  have hi : Function.Injective (fun p : Nat.Primes => (p, (1 : ℕ))) := by
    intro p q h
    exact congrArg Prod.fst h
  have hb := Summable.tsum_le_tsum_of_inj (fun p : Nat.Primes => (p, (1 : ℕ))) hi
    (fun i _ => higherAtomWeight_nonneg i)
    (fun p => (squarePrefixCoefficient_eq_slice p).le)
    squarePrefixCoefficient_summable higherAtomWeight_summable
  exact hb

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourcePrimeSquareTailWork/Variant7b8974c71160b619fbb4ef3c333ec4c54797048f6f40c1a82f7f8a0ce0e75b8c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourcePrimeSquareTailWork/Variant7b8974c71160b619fbb4ef3c333ec4c54797048f6f40c1a82f7f8a0ce0e75b8c.lean#L90).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1094614db9115f5beeb671a900361db0245138b0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
