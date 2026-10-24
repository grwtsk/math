# causalShift_ae

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:6617c9e2-5f35-f3a5-5770-4ee9cb70c0d4",
  "kind": "theorem",
  "lexical_name": "causalShift_ae",
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
  "slug": "causalshift-ae--724eba521ef9696f8e5a1e87",
  "source": {
    "blob": "6d891bb6c475cc003707266cea8da1e62ab66880",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 43,
    "line": 33,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/FiniteMobiusBeforeStyleFix/Variant78057b4919d002c954234e6a45a85388826a9f8aea41bf21492f5beb3c54cf12.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:724eba521ef9696f8e5a1e87769756ddaa95609faa4a826bd18946a4809fdbaa",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/FiniteMobiusBeforeStyleFix/Variant78057b4919d002c954234e6a45a85388826a9f8aea41bf21492f5beb3c54cf12.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6617c9e2-5f35-f3a5-5770-4ee9cb70c0d4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 33–43.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem causalShift_ae (a : ℝ) (p : H) :
    causalShift a p =ᵐ[halfLineMeasure]
      (fun t : ℝ => (Ioi (0 : ℝ)).indicator p (t - a)) := by
  have h := (measurePreserving_sub_right volume a).quasiMeasurePreserving.ae_eq_comp
    (zeroExtension_ae p)
  filter_upwards [restriction_ae (fullShift a (zeroExtension p)),
    ae_restrict_of_ae (fullShift_ae a (zeroExtension p)), ae_restrict_of_ae h]
      with t hr hs ht
  exact hr.trans (hs.trans ht)

/-- The admitted shift has finite norm without a compact-support assumption on the input. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/FiniteMobiusBeforeStyleFix/Variant78057b4919d002c954234e6a45a85388826a9f8aea41bf21492f5beb3c54cf12.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/FiniteMobiusBeforeStyleFix/Variant78057b4919d002c954234e6a45a85388826a9f8aea41bf21492f5beb3c54cf12.lean#L33).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6d891bb6c475cc003707266cea8da1e62ab66880` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
