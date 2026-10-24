# atom_measurable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0ed342ff-316f-09de-6260-7b1772192d45",
  "kind": "theorem",
  "lexical_name": "atom_measurable",
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
  "slug": "atom-measurable--ddb8a06d9fb849b7b2e44915",
  "source": {
    "blob": "55453c4a3659ece04773b5119ad787578d37e1d6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 40,
    "line": 35,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/ActualMangoldtLaplaceAttempt02/Variantc4cfd050b152110f2a49ca99f0615c3c2bb53afda9bce5aa2ba56ab01da25746.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ddb8a06d9fb849b7b2e44915a7cfbfb17546fd7abe07eef04a116907736889d6",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/ActualMangoldtLaplaceAttempt02/Variantc4cfd050b152110f2a49ca99f0615c3c2bb53afda9bce5aa2ba56ab01da25746.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0ed342ff-316f-09de-6260-7b1772192d45`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 35–40.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem atom_measurable (s : ℝ) (n : ℕ) : Measurable (laplaceAtom s n) := by
  unfold laplaceAtom
  apply Measurable.indicator _ measurableSet_Ici
  exact measurable_const.mul (((measurable_const.mul measurable_id) :
    Measurable (fun t : ℝ => (-s)*t)).exp)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/ActualMangoldtLaplaceAttempt02/Variantc4cfd050b152110f2a49ca99f0615c3c2bb53afda9bce5aa2ba56ab01da25746.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/ActualMangoldtLaplaceAttempt02/Variantc4cfd050b152110f2a49ca99f0615c3c2bb53afda9bce5aa2ba56ab01da25746.lean#L35).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `55453c4a3659ece04773b5119ad787578d37e1d6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
