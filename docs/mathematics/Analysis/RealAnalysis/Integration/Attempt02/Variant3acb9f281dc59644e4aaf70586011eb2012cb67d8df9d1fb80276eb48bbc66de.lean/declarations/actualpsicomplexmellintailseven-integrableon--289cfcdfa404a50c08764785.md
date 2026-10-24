# actualPsiComplexMellinTailSeven_integrableOn

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ae0cdbeb-ac60-4478-69e3-c775fe2737b1",
  "kind": "theorem",
  "lexical_name": "actualPsiComplexMellinTailSeven_integrableOn",
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
  "slug": "actualpsicomplexmellintailseven-integrableon--289cfcdfa404a50c08764785",
  "source": {
    "blob": "885f6cbc8eb9019fea96aac739ce5f3673aa5470",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 84,
    "line": 79,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Attempt02/Variant3acb9f281dc59644e4aaf70586011eb2012cb67d8df9d1fb80276eb48bbc66de.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:289cfcdfa404a50c0876478585e248edcbabc3d2ca24ba24f116e703dcb5f94e",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/Attempt02/Variant3acb9f281dc59644e4aaf70586011eb2012cb67d8df9d1fb80276eb48bbc66de.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ae0cdbeb-ac60-4478-69e3-c775fe2737b1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 79–84.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualPsiComplexMellinTailSeven_integrableOn {s : ℂ} (hs : 1 < s.re) :
    IntegrableOn (fun y : ℝ => (Chebyshev.psi y : ℂ) * (y : ℂ) ^ (-(s + 1)))
      (Ioi (7 : ℝ)) :=
  (actualPsiComplexMellin_integrableOn hs).mono_set (Ioi_subset_Ioi (by norm_num))

/-- The actual prime-seven boundary and full lower head have their exact signed Mellin return. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Attempt02/Variant3acb9f281dc59644e4aaf70586011eb2012cb67d8df9d1fb80276eb48bbc66de.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Attempt02/Variant3acb9f281dc59644e4aaf70586011eb2012cb67d8df9d1fb80276eb48bbc66de.lean#L79).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `885f6cbc8eb9019fea96aac739ce5f3673aa5470` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
