# wholeCubicErrorRow

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:70cadda2b68748f73ba11f0d001d0019d04ea05e2fe903a673b4f8bb6e26d338",
  "kind": "def",
  "lexical_name": "wholeCubicErrorRow",
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
  "slug": "wholecubicerrorrow--ed65aab48b01e55a2034bbf5",
  "source": {
    "blob": "003fe782881f4d1026387cc0c5c93490a33cd484",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 35,
    "line": 31,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Source/Variant88b4c03994bd15c29c7f379bf794f03530db28f02a7027e828587a5f76ce64a4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ed65aab48b01e55a2034bbf5a15a2ef9ee9caa7c6af1cb5ded7512083a12faea",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/Source/Variant88b4c03994bd15c29c7f379bf794f03530db28f02a7027e828587a5f76ce64a4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:70cadda2b68748f73ba11f0d001d0019d04ea05e2fe903a673b4f8bb6e26d338`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 31–35.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def wholeCubicErrorRow (A k : ℝ) : ℝ :=
  ∫ u in Ioi (0 : ℝ), Int.fract u *
    (deriv (logProfile A k) u - cubicLogModelDerivative A k u)

/-- All real logarithmic displacements are admitted, including zero and negative ones. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Source/Variant88b4c03994bd15c29c7f379bf794f03530db28f02a7027e828587a5f76ce64a4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Source/Variant88b4c03994bd15c29c7f379bf794f03530db28f02a7027e828587a5f76ce64a4.lean#L31).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `003fe782881f4d1026387cc0c5c93490a33cd484` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
