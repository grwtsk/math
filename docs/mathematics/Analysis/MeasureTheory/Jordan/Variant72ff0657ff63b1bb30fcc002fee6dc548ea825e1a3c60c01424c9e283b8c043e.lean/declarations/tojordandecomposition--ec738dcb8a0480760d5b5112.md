# toJordanDecomposition

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:df292bc3bc66a56d78756397f57e4c69c017d83c6b9098f9ae369c32a0a74171",
  "kind": "def",
  "lexical_name": "toJordanDecomposition",
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
  "slug": "tojordandecomposition--ec738dcb8a0480760d5b5112",
  "source": {
    "blob": "9f2e8c3b7ca084fa741bfd3798b95748a962f059",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 215,
    "line": 204,
    "path": "GRWTSK/Analysis/MeasureTheory/Jordan/Variant72ff0657ff63b1bb30fcc002fee6dc548ea825e1a3c60c01424c9e283b8c043e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ec738dcb8a0480760d5b5112581c3a431eb897fc249042632d636a76eaa7544f",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/Jordan/Variant72ff0657ff63b1bb30fcc002fee6dc548ea825e1a3c60c01424c9e283b8c043e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:df292bc3bc66a56d78756397f57e4c69c017d83c6b9098f9ae369c32a0a74171`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 204–215.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def toJordanDecomposition (s : SignedMeasure α) : JordanDecomposition α :=
  let i := s.exists_compl_positive_negative.choose
  let hi := s.exists_compl_positive_negative.choose_spec
  { posPart := s.toMeasureOfZeroLE i hi.1 hi.2.1
    negPart := s.toMeasureOfLEZero iᶜ hi.1.compl hi.2.2
    posPart_finite := inferInstance
    negPart_finite := inferInstance
    mutuallySingular := by
      refine ⟨iᶜ, hi.1.compl, ?_, ?_⟩
      · rw [toMeasureOfZeroLE_apply _ _ hi.1 hi.1.compl]; simp
      · rw [toMeasureOfLEZero_apply _ _ hi.1.compl hi.1.compl.compl]; simp }

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/Jordan/Variant72ff0657ff63b1bb30fcc002fee6dc548ea825e1a3c60c01424c9e283b8c043e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/Jordan/Variant72ff0657ff63b1bb30fcc002fee6dc548ea825e1a3c60c01424c9e283b8c043e.lean#L204).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9f2e8c3b7ca084fa741bfd3798b95748a962f059` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
