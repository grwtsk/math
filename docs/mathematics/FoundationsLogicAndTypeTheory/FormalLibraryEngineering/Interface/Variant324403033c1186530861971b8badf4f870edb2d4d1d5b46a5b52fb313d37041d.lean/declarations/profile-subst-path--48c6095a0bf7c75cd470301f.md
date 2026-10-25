# profile_subst_path

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:41413f00-b6db-472e-b823-c9b4b6e7bffd",
  "kind": "theorem",
  "lexical_name": "profile_subst_path",
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
  "slug": "profile-subst-path--48c6095a0bf7c75cd470301f",
  "source": {
    "blob": "357213696956794a5680bc76edabe53bf0376c32",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 192,
    "line": 186,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Interface/Variant324403033c1186530861971b8badf4f870edb2d4d1d5b46a5b52fb313d37041d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:48c6095a0bf7c75cd470301fa037e380a37a7bb3c39ce6a7af94735910382a51",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Interface/Variant324403033c1186530861971b8badf4f870edb2d4d1d5b46a5b52fb313d37041d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:41413f00-b6db-472e-b823-c9b4b6e7bffd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 186–192.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem profile_subst_path {Γ : List (Expr S)} {T : Expr S} {s : S} {σ : Nat → Expr S}
    (ht : PureTypeSystem.HasType P Γ T (.sort s)) (hσ : Ω.TypedSubstitution Γ σ) :
    PositivePath (PrimaryEdge P) (Ω.profile (T.subst σ)) (Profile P Γ T) :=
  Profile.inclusion_path (Ω.profile_feasible hw (HasType.subst ht hσ))
    (Profile.feasible (ht.weaklyNormalizing hw) (Profile.nonempty_of_sorted hw ht))
    (Ω.profile_subst_growth hw ht hσ)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Interface/Variant324403033c1186530861971b8badf4f870edb2d4d1d5b46a5b52fb313d37041d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Interface/Variant324403033c1186530861971b8badf4f870edb2d4d1d5b46a5b52fb313d37041d.lean#L186).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `357213696956794a5680bc76edabe53bf0376c32` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
