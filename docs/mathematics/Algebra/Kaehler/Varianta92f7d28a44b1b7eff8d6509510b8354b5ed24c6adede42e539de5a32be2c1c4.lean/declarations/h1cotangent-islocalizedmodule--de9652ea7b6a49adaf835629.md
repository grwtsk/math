# H1Cotangent.isLocalizedModule

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:90a69db80fcfe45c257668a93bb23d79faf5068a794011b819e3947cf4fbcaaf",
  "kind": "instance",
  "lexical_name": "H1Cotangent.isLocalizedModule",
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
  "slug": "h1cotangent-islocalizedmodule--de9652ea7b6a49adaf835629",
  "source": {
    "blob": "48bfeee74dc527e412956ee6ada4055339e5e187",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 388,
    "line": 381,
    "path": "GRWTSK/Algebra/Kaehler/Varianta92f7d28a44b1b7eff8d6509510b8354b5ed24c6adede42e539de5a32be2c1c4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:de9652ea7b6a49adaf8356291dcb12b8edc6a24d8d7134ff2c8b0cdef4367f12",
  "verification": {
    "reference": "docs/verification/Algebra/Kaehler/Varianta92f7d28a44b1b7eff8d6509510b8354b5ed24c6adede42e539de5a32be2c1c4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:90a69db80fcfe45c257668a93bb23d79faf5068a794011b819e3947cf4fbcaaf`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 381–388.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance H1Cotangent.isLocalizedModule (M : Submonoid S) [IsLocalization M T] :
    IsLocalizedModule M (Algebra.H1Cotangent.map R R S T) := by
  rw [isLocalizedModule_iff_isBaseChange M T]
  change Function.Bijective ((Algebra.H1Cotangent.map R R S T).liftBaseChange T)
  rw [← tensorH1CotangentOfIsLocalization_toLinearMap R T M]
  exact (tensorH1CotangentOfIsLocalization R T M).bijective

end Algebra
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Kaehler/Varianta92f7d28a44b1b7eff8d6509510b8354b5ed24c6adede42e539de5a32be2c1c4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Kaehler/Varianta92f7d28a44b1b7eff8d6509510b8354b5ed24c6adede42e539de5a32be2c1c4.lean#L381).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `48bfeee74dc527e412956ee6ada4055339e5e187` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
