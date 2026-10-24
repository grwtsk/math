# hasDerivAt_thetaPhiRawD3

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:4a376226-e783-02db-0a0b-6fad42dfe4bf",
  "kind": "theorem",
  "lexical_name": "hasDerivAt_thetaPhiRawD3",
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
  "slug": "hasderivat-thetaphirawd3--417e9ec6cb93cf2402b77cd6",
  "source": {
    "blob": "dc0c3589e5fc8dd56d05069481a2ab5255d5e638",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 133,
    "line": 123,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ThetaPositiveLift/Variant4b0e7e3ca8052e3311cbb72bfbb6d2cb1bc833768521e3a244900e1fbfd1dbd0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:417e9ec6cb93cf2402b77cd6be8efae96fe7f87a00ecfd22a992eb1be8fea6fe",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/ThetaPositiveLift/Variant4b0e7e3ca8052e3311cbb72bfbb6d2cb1bc833768521e3a244900e1fbfd1dbd0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4a376226-e783-02db-0a0b-6fad42dfe4bf`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 123–133.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem hasDerivAt_thetaPhiRawD3 (t : ℝ) :
    HasDerivAt thetaPhiRawD3 (thetaPhiRawD4 t) t := by
  unfold thetaPhiRawD3
  convert! (((((hasDerivAt_thetaGaussianSum 4 9 t).const_mul (3270 * Real.pi ^ 2)).sub
    ((hasDerivAt_thetaGaussianSum 2 5 t).const_mul (375 * Real.pi))).sub
    ((hasDerivAt_thetaGaussianSum 6 13 t).const_mul (4232 * Real.pi ^ 3))).add
    ((hasDerivAt_thetaGaussianSum 8 17 t).const_mul (1440 * Real.pi ^ 4))).sub
    ((hasDerivAt_thetaGaussianSum 10 21 t).const_mul (128 * Real.pi ^ 5)) using 1
  norm_num [thetaPhiRawD4]
  ring

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/ThetaPositiveLift/Variant4b0e7e3ca8052e3311cbb72bfbb6d2cb1bc833768521e3a244900e1fbfd1dbd0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ThetaPositiveLift/Variant4b0e7e3ca8052e3311cbb72bfbb6d2cb1bc833768521e3a244900e1fbfd1dbd0.lean#L123).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `dc0c3589e5fc8dd56d05069481a2ab5255d5e638` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
