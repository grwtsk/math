# coefficientMap

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:dbeca9e8a5c5501d96dac01741333d5cbc7776c93d93fe212dc3c9b239c1295e",
  "kind": "def",
  "lexical_name": "coefficientMap",
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
  "slug": "coefficientmap--d4ece554e908a3e688e77176",
  "source": {
    "blob": "bdbdbe2984f1c89ca7fb1f820af52bead5e15808",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 27,
    "line": 22,
    "path": "GRWTSK/Analysis/FiniteCharacterGuardAttempt03/Variant48c71d040c059a4ed0fe8814abf1ce4c345394e565f706e72c7b9e484d606739.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:d4ece554e908a3e688e771765879268d1399e360d13689abe15715c11c9c57ff",
  "verification": {
    "reference": "docs/verification/Analysis/FiniteCharacterGuardAttempt03/Variant48c71d040c059a4ed0fe8814abf1ce4c345394e565f706e72c7b9e484d606739.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:dbeca9e8a5c5501d96dac01741333d5cbc7776c93d93fe212dc3c9b239c1295e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 22–27.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def coefficientMap (character : AddChar G ℂ) : (G → ℂ) →ₗ[ℂ] ℂ where
  toFun f := wInner (𝕜 := ℂ) cWeight (character : G → ℂ) f
  map_add' f g := wInner_add_right _ _ _ _
  map_smul' c f := by simp [wInner_smul_right]

/-- The convention is conjugate-character times the function, averaged over the group. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/FiniteCharacterGuardAttempt03/Variant48c71d040c059a4ed0fe8814abf1ce4c345394e565f706e72c7b9e484d606739.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FiniteCharacterGuardAttempt03/Variant48c71d040c059a4ed0fe8814abf1ce4c345394e565f706e72c7b9e484d606739.lean#L22).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bdbdbe2984f1c89ca7fb1f820af52bead5e15808` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
