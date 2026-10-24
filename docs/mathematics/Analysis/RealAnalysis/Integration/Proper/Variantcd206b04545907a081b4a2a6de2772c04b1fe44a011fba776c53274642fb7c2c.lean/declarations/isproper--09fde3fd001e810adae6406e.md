# IsProper

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:794959cd165698d1fbab59afc00f18d8deb6a45016a5c589de710af4587a869d",
  "kind": "structure",
  "lexical_name": "IsProper",
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
  "slug": "isproper--09fde3fd001e810adae6406e",
  "source": {
    "blob": "be4d2222dee9186602f5ce9bfbbab502bfa4a7f6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 59,
    "line": 55,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Proper/Variantcd206b04545907a081b4a2a6de2772c04b1fe44a011fba776c53274642fb7c2c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:09fde3fd001e810adae6406e25a1fd109b3cc0ec7f868b0416c18d62a95dfe65",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/Proper/Variantcd206b04545907a081b4a2a6de2772c04b1fe44a011fba776c53274642fb7c2c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:794959cd165698d1fbab59afc00f18d8deb6a45016a5c589de710af4587a869d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 55–59.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure IsProper (π : Kernel[𝓑, 𝓧] X X) : Prop where
  restrict_eq_indicator_smul' :
    ∀ ⦃B : Set X⦄ (hB : MeasurableSet[𝓑 ⊓ 𝓧] B) (x : X),
      π.restrict (inf_le_right (b := 𝓧) _ hB) x = B.indicator (fun _ ↦ (1 : ℝ≥0∞)) x • π x

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Proper/Variantcd206b04545907a081b4a2a6de2772c04b1fe44a011fba776c53274642fb7c2c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Proper/Variantcd206b04545907a081b4a2a6de2772c04b1fe44a011fba776c53274642fb7c2c.lean#L55).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `be4d2222dee9186602f5ce9bfbbab502bfa4a7f6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
