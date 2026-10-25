# twistedD1_comp_twistedD0_eq_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:cf4b1acd-715c-29d5-f4c8-2ffc6cce398d",
  "kind": "theorem",
  "lexical_name": "twistedD1_comp_twistedD0_eq_zero",
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
  "slug": "twistedd1-comp-twistedd0-eq-zero--8db659ea335dd823f1be052d",
  "source": {
    "blob": "cacd43b0b031d170099a08926f9c78ebc508d780",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 44,
    "line": 23,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AF7c41d6ebd92acd8/Variantab3ab4190fd476c833c5368d720498771473ed365dcff5a77b0481048c0fcaf0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8db659ea335dd823f1be052de60c6b7fe6fdd8cfb930cf612d72e027a6da040f",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AF7c41d6ebd92acd8/Variantab3ab4190fd476c833c5368d720498771473ed365dcff5a77b0481048c0fcaf0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:cf4b1acd-715c-29d5-f4c8-2ffc6cce398d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 23–44.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem twistedD1_comp_twistedD0_eq_zero
    (potential : TwistedZeroCochain n A)
    (square : FlatRotationSquare n A) :
    twistedD1 (twistedD0 potential) square = 0 := by
  have htransport :
      square.e1.transport (square.e0.transport (potential square.e0.source)) =
        square.e3.transport (square.e2.transport (potential square.e0.source)) := by
    simpa only [AddEquiv.trans_apply] using
      congrArg
        (fun transport : A ≃+ A ↦ transport (potential square.e0.source))
        square.flatTransport
  unfold twistedD1 twistedD0
  simp only [map_sub]
  rw [square.e1Source, square.e3Source, square.commonSource,
    square.commonTarget, htransport]
  abel

namespace TwistedH1

end TwistedH1

end Mathematics.Oracle.Naming
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AF7c41d6ebd92acd8/Variantab3ab4190fd476c833c5368d720498771473ed365dcff5a77b0481048c0fcaf0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AF7c41d6ebd92acd8/Variantab3ab4190fd476c833c5368d720498771473ed365dcff5a77b0481048c0fcaf0.lean#L23).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cacd43b0b031d170099a08926f9c78ebc508d780` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
