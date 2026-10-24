# NontrivialZetaZero.conjugate

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ceefe85b-a2b7-d0b8-f354-21e691b165b8",
  "kind": "theorem",
  "lexical_name": "NontrivialZetaZero.conjugate",
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
  "slug": "nontrivialzetazero-conjugate--e8a6b88a651a2113bc5bf486",
  "source": {
    "blob": "b6b2bbe661b246ce4e773f81c9c441e3d400e540",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 83,
    "line": 68,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ZeroSymmetryAudit/Variant634d0ff8532707736f25f1ab0677c80369e5837eea89dccadfb37413a41a31c0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e8a6b88a651a2113bc5bf4869ce71c52372e0d6363add0c52351bd14e6a64cd9",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ZeroSymmetryAudit/Variant634d0ff8532707736f25f1ab0677c80369e5837eea89dccadfb37413a41a31c0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ceefe85b-a2b7-d0b8-f354-21e691b165b8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 68–83.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem NontrivialZetaZero.conjugate {s : ℂ} (hs : NontrivialZetaZero s) :
    NontrivialZetaZero (zeroConjugate s) := by
  refine ⟨?_, ?_, ?_⟩
  · change riemannZeta (conj s) = 0
    rw [riemannZeta_conj, hs.1, map_zero]
  · rintro ⟨n, hn⟩
    apply hs.2.1
    refine ⟨n, ?_⟩
    have h := congrArg star hn
    simpa [zeroConjugate] using h
  · intro h
    apply hs.2.2
    have h' := congrArg star h
    simpa [zeroConjugate] using h'

/-- Reflection transports nontrivial zeros without dividing by a vanishing Gamma factor. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ZeroSymmetryAudit/Variant634d0ff8532707736f25f1ab0677c80369e5837eea89dccadfb37413a41a31c0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ZeroSymmetryAudit/Variant634d0ff8532707736f25f1ab0677c80369e5837eea89dccadfb37413a41a31c0.lean#L68).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b6b2bbe661b246ce4e773f81c9c441e3d400e540` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
