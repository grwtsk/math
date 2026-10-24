# map

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:94a417fed5e893c41e5b1a034be93a75cf732853ffd2b34f9399c93059fda30c",
  "kind": "def",
  "lexical_name": "map",
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
  "slug": "map--0fce7cbee4c709626e9befd1",
  "source": {
    "blob": "7e424a312a23a58cdeef65a4769b37c1e8290274",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 233,
    "line": 226,
    "path": "GRWTSK/Algebra/Ring/Variant842d1bb742d401e03fe4ff62d33dfbd6890aa8d52d038f635c70d4e660213e6e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:0fce7cbee4c709626e9befd18a158fa69cf5f971f078412a2d6c7ab015e4f51c",
  "verification": {
    "reference": "docs/verification/Algebra/RingTheory/Variant842d1bb742d401e03fe4ff62d33dfbd6890aa8d52d038f635c70d4e660213e6e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_SOURCE_DEPENDENCY"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:94a417fed5e893c41e5b1a034be93a75cf732853ffd2b34f9399c93059fda30c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 226–233.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def map (g : (i : ι) → G i →+* G' i)
    (hg : ∀ i j h, (g j).comp (f i j h) = (f' i j h).comp (g i)) :
    DirectLimit G (fun _ _ h ↦ f _ _ h) →+* DirectLimit G' fun _ _ h ↦ f' _ _ h :=
  lift _ _ _ (fun i ↦ (of _ _ _).comp (g i)) fun i j h g ↦ by
      have eq1 := DFunLike.congr_fun (hg i j h) g
      simp only [RingHom.coe_comp, Function.comp_apply] at eq1 ⊢
      rw [eq1, of_f]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_SOURCE_DEPENDENCY`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/RingTheory/Variant842d1bb742d401e03fe4ff62d33dfbd6890aa8d52d038f635c70d4e660213e6e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Ring/Variant842d1bb742d401e03fe4ff62d33dfbd6890aa8d52d038f635c70d4e660213e6e.lean#L226).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7e424a312a23a58cdeef65a4769b37c1e8290274` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
