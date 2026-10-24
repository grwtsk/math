# pointsPi_injective

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3a4ae49b-ec95-3492-c334-3974b6d0a36e",
  "kind": "lemma",
  "lexical_name": "pointsPi_injective",
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
  "slug": "pointspi-injective--8c6af4b8c20ee10ad62c9d18",
  "source": {
    "blob": "9e1bf693e98ab823106ec19179a3ef4f9eb04470",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 112,
    "line": 106,
    "path": "GRWTSK/Algebra/PointsPi/Variant5ac8966b2ec102647685c57d2e5b7f8b7ee0e41d57c69c5bbcc40a4ab8b9711b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8c6af4b8c20ee10ad62c9d1803bd5581e39ddb123642583e0d222e6390f2ceb4",
  "verification": {
    "reference": "docs/verification/Algebra/PointsPi/Variant5ac8966b2ec102647685c57d2e5b7f8b7ee0e41d57c69c5bbcc40a4ab8b9711b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3a4ae49b-ec95-3492-c334-3974b6d0a36e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 106–112.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma pointsPi_injective [QuasiSeparatedSpace X] : Function.Injective (pointsPi R X) := by
  rintro f g e
  have := isIso_of_comp_eq_sigmaSpec R (V := equalizer f g)
    (equalizer.lift (sigmaSpec R) (by ext1 i; simpa using congr_fun e i))
    (equalizer.ι f g) (by simp)
  rw [← cancel_epi (equalizer.ι f g), equalizer.condition]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/PointsPi/Variant5ac8966b2ec102647685c57d2e5b7f8b7ee0e41d57c69c5bbcc40a4ab8b9711b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/PointsPi/Variant5ac8966b2ec102647685c57d2e5b7f8b7ee0e41d57c69c5bbcc40a4ab8b9711b.lean#L106).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9e1bf693e98ab823106ec19179a3ef4f9eb04470` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
