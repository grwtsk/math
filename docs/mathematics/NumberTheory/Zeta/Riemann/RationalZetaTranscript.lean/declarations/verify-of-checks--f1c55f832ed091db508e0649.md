# verify_of_checks

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:50df5f93-b2a0-2e4c-75e7-9982a03b8f0d",
  "kind": "theorem",
  "lexical_name": "verify_of_checks",
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
  "slug": "verify-of-checks--f1c55f832ed091db508e0649",
  "source": {
    "blob": "73656fd9a7ebe40dddd45ab82240df2e51defa6c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 149,
    "line": 125,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/RationalZetaTranscript.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f1c55f832ed091db508e0649225add4065432f56e7ef49fc7096d7e3c3c83e43",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/RationalZetaTranscript.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:50df5f93-b2a0-2e4c-75e7-9982a03b8f0d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 125–149.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem verify_of_checks (N B : ℕ) (c : QComplex) (p : Plan N) (t : Transcript N)
    (blocks : Fin B → Finset (Fin N)) (hcover : ∀ i, ∃ b, i ∈ blocks b)
    (valueTol slopeTol : ℚ) (out : CenterState)
    (hg : checkGeometry N c p = true)
    (hb : ∀ b, checkPrefix N c p t (blocks b) = true)
    (ht : checkTerminal N c p t = true)
    (hf : checkFinal N c p t valueTol slopeTol out = true) :
    RationalZetaCenterEvaluation.verify N c p valueTol slopeTol out = true := by
  have hall (i : Fin N) :
      RationalPowerEvaluation.Admissible ((i.1 : ℚ) + 1) (sourceExponent c) (p.prefix i) ∧
      RationalPowerEvaluation.compute ((i.1 : ℚ) + 1) (sourceExponent c) (p.prefix i) =
        t.prefix i := by
    obtain ⟨b, hi⟩ := hcover i
    exact (checkPrefix_iff N c p t (blocks b)).mp (hb b) i hi
  have hgeo := (checkGeometry_iff N c p).mp hg
  have hterm := (checkTerminal_iff N c p t).mp ht
  have hdata := transcript_eq_canonical N c p t (fun i => (hall i).2) hterm.2
  have hfinal := (checkFinal_iff N c p t valueTol slopeTol out).mp hf
  rw [hdata, assemble_canonical] at hfinal
  apply (RationalZetaCenterEvaluation.verify_iff N c p valueTol slopeTol out).mpr
  exact ⟨⟨hgeo.1, hgeo.2.1, hgeo.2.2, fun i => (hall i).1, hterm.1⟩,
    hfinal.1, hfinal.2⟩

/-- Conversely, original acceptance supplies a transcript meeting every block check.
This prevents the decomposition from silently changing the acceptance predicate. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/RationalZetaTranscript.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/RationalZetaTranscript.lean#L125).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `73656fd9a7ebe40dddd45ab82240df2e51defa6c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
