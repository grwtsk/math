# inverse_sqrt_antiderivative

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8b5fa653-f901-90ac-bac2-24a062926468",
  "kind": "theorem",
  "lexical_name": "inverse_sqrt_antiderivative",
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
  "slug": "inverse-sqrt-antiderivative--7dc6e0294beadf75276695a5",
  "source": {
    "blob": "ba3478518d126461048c5043e1289d5d11ed1638",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 30,
    "line": 21,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/SourceColumnEnvelopeMass/Variantb39a28df80d85baee0bb47d0fee8838e18a6d8902966f734a532791f042b95df.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7dc6e0294beadf75276695a555d4425e150d5c5564e41470917a1845a58d30f1",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/SourceColumnEnvelopeMass/Variantb39a28df80d85baee0bb47d0fee8838e18a6d8902966f734a532791f042b95df.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8b5fa653-f901-90ac-bac2-24a062926468`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 21–30.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem inverse_sqrt_antiderivative (x : ℝ) (hx : 0 < x) :
    HasDerivAt (fun x : ℝ => -2 / Real.sqrt x)
      (1 / (x * Real.sqrt x)) x := by
  have hs : Real.sqrt x ≠ 0 := (Real.sqrt_pos.2 hx).ne'
  convert ((Real.hasDerivAt_sqrt hx.ne').inv hs).const_mul (-2) using 1
  · funext y
    ring
  · field_simp
    nlinarith [Real.sq_sqrt hx.le]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/SourceColumnEnvelopeMass/Variantb39a28df80d85baee0bb47d0fee8838e18a6d8902966f734a532791f042b95df.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/SourceColumnEnvelopeMass/Variantb39a28df80d85baee0bb47d0fee8838e18a6d8902966f734a532791f042b95df.lean#L21).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ba3478518d126461048c5043e1289d5d11ed1638` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
