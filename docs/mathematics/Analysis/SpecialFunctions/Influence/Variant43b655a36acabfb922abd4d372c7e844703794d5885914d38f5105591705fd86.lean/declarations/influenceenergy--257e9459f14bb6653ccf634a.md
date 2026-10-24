# influenceEnergy

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:db792e355fdd22912bc89c5a9a21e8b6626b31d1043d6c9e11dbb61ddb7d4a59",
  "kind": "def",
  "lexical_name": "influenceEnergy",
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
  "slug": "influenceenergy--257e9459f14bb6653ccf634a",
  "source": {
    "blob": "1cd5d2c08a1607c634f8f195d380d84b4d50a077",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 30,
    "line": 18,
    "path": "GRWTSK/Analysis/SpecialFunctions/Influence/Variant43b655a36acabfb922abd4d372c7e844703794d5885914d38f5105591705fd86.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:257e9459f14bb6653ccf634a30e11576091881b78f1d9f207a533125345cb9da",
  "verification": {
    "reference": "docs/verification/Analysis/SpecialFunctions/Influence/Variant43b655a36acabfb922abd4d372c7e844703794d5885914d38f5105591705fd86.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:db792e355fdd22912bc89c5a9a21e8b6626b31d1043d6c9e11dbb61ddb7d4a59`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 18–30.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def influenceEnergy
    {bits : Nat}
    {Scale : Type uScale}
    {TestFunction : Type uTest}
    (influence :
      Scale → Fin bits → TestFunction → ℝ)
    (scale : Scale)
    (test : TestFunction) : ℝ := by
  classical
  exact
    ∑ index : Fin bits,
      (influence scale index test) ^ 2

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/SpecialFunctions/Influence/Variant43b655a36acabfb922abd4d372c7e844703794d5885914d38f5105591705fd86.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/SpecialFunctions/Influence/Variant43b655a36acabfb922abd4d372c7e844703794d5885914d38f5105591705fd86.lean#L18).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1cd5d2c08a1607c634f8f195d380d84b4d50a077` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
