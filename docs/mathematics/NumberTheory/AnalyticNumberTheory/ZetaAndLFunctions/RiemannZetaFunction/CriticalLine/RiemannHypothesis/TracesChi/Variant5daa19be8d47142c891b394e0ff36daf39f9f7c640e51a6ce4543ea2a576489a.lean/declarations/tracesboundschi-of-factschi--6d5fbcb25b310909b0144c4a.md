# tracesBoundsChi_of_factsChi

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d9af3b92-d6c8-3eab-c1cc-63ac3ee73663",
  "kind": "theorem",
  "lexical_name": "tracesBoundsChi_of_factsChi",
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
  "slug": "tracesboundschi-of-factschi--6d5fbcb25b310909b0144c4a",
  "source": {
    "blob": "002d9e76f53226936f0854e872936b9f9316bb88",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 302,
    "line": 289,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/TracesChi/Variant5daa19be8d47142c891b394e0ff36daf39f9f7c640e51a6ce4543ea2a576489a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6d5fbcb25b310909b0144c4aa2c4271f5e058d8d3ee286b7060126be4676c216",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/TracesChi/Variant5daa19be8d47142c891b394e0ff36daf39f9f7c640e51a6ce4543ea2a576489a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d9af3b92-d6c8-3eab-c1cc-63ac3ee73663`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 289–302.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem tracesBoundsChi_of_factsChi : TracesBoundsChi P q D.aT D.trG D.trG2 D.Ncnt where
  tr1 := tr1_chi h
  tr1' := tr1'_chi h
  tr2 := tr2_chi h
  ratio := ratio_chi h

end assembly

/-! ## Concrete instantiation -/

section Concrete
variable (P : Params) (κ q : ℕ) (c : ℕ → ℂ)

/-- rfl-bridges between the abstract-taper chi-quantities and the concrete ones. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/TracesChi/Variant5daa19be8d47142c891b394e0ff36daf39f9f7c640e51a6ce4543ea2a576489a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/TracesChi/Variant5daa19be8d47142c891b394e0ff36daf39f9f7c640e51a6ce4543ea2a576489a.lean#L289).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `002d9e76f53226936f0854e872936b9f9316bb88` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
