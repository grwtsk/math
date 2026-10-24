# safeOddPrimePowerTerm_im_eq_zero_of_im_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:95151267-bbe8-5765-44f0-365cd9b5cd86",
  "kind": "theorem",
  "lexical_name": "safeOddPrimePowerTerm_im_eq_zero_of_im_zero",
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
  "slug": "safeoddprimepowerterm-im-eq-zero-of-im-zero--7135d07170f151d611976019",
  "source": {
    "blob": "76dd7e0b9ed14c0c013859a12283af757677df68",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 151,
    "line": 141,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/SafeShiftQuarticChannelPacking.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7135d07170f151d611976019462af40138714e197bd870101a32c356fd57dd18",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/SafeShiftQuarticChannelPacking.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:95151267-bbe8-5765-44f0-365cd9b5cd86`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 141–151.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem safeOddPrimePowerTerm_im_eq_zero_of_im_zero
    (z : ZeroPoint) (event : PrimePowerEvent)
    (ht : z.1.im = 0) :
    (safeOddPrimePowerTerm z event).im = 0 := by
  unfold safeOddPrimePowerTerm
  rw [Complex.div_im]
  simp [safePlusPrimePowerTerm_im_eq_zero_of_im_zero z event ht,
    safeMinusPrimePowerTerm_im_eq_zero_of_im_zero z event ht]

/-- Axial planar point:
x is the even baseline, y is the even defect from the a=0 center. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/SafeShiftQuarticChannelPacking.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/SafeShiftQuarticChannelPacking.lean#L141).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `76dd7e0b9ed14c0c013859a12283af757677df68` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
