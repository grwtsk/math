# omittedOnsetAtom_le_zeroMoment

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:bc0c692d-501c-189d-5a74-1d133e7e8c68",
  "kind": "theorem",
  "lexical_name": "omittedOnsetAtom_le_zeroMoment",
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
  "slug": "omittedonsetatom-le-zeromoment--386993aec28f1107d84e111d",
  "source": {
    "blob": "73ea2e19685262b22955c29ffcdb0bc599f4b2bf",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 206,
    "line": 200,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/ProperPowerMoments/Variantbbf14baafe65379dceaa3dd7295c9c7463b94cc83b3240f24b449272dfd0cc71.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:386993aec28f1107d84e111d28431d563a77bdf22f2b510bb64ed4186c153d9e",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/ProperPowerMoments/Variantbbf14baafe65379dceaa3dd7295c9c7463b94cc83b3240f24b449272dfd0cc71.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:bc0c692d-501c-189d-5a74-1d133e7e8c68`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 200–206.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem omittedOnsetAtom_le_zeroMoment (t : ℝ) (p : Nat.Primes) (k : ℕ) :
    omittedOnsetAtom t p k ≤ primeMomentAtom 0 p k := by
  unfold omittedOnsetAtom primeMomentAtom momentAtom
  split_ifs
  · simp
  · exact momentAtom_nonneg 0 p.val k

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/ProperPowerMoments/Variantbbf14baafe65379dceaa3dd7295c9c7463b94cc83b3240f24b449272dfd0cc71.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/ProperPowerMoments/Variantbbf14baafe65379dceaa3dd7295c9c7463b94cc83b3240f24b449272dfd0cc71.lean#L200).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `73ea2e19685262b22955c29ffcdb0bc599f4b2bf` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
