# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:2c654b160fabe3e6c924c7f3c0f4a828733c912070a45a1268038660f8e5d817",
  "kind": "instance",
  "lexical_name": null,
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
  "slug": "instance--ab6945563ff020f4adb77c49",
  "source": {
    "blob": "3bbc3621cff5ebe00850ff5a9de4d39505629aed",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 49,
    "line": 38,
    "path": "GRWTSK/Algebra/UniversalAlgebra/Pi/Variant1c37bb844839e95ad39853568490df0fc22db79391f6be62cfb43136f34d51f8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ab6945563ff020f4adb77c492f86c306fd6206c98902810b147c222fec146d7c",
  "verification": {
    "reference": "docs/verification/Algebra/UniversalAlgebra/Pi/Variant1c37bb844839e95ad39853568490df0fc22db79391f6be62cfb43136f34d51f8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:2c654b160fabe3e6c924c7f3c0f4a828733c912070a45a1268038660f8e5d817`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 38–49.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance (M : Π i, Submonoid (R i)) [∀ i, IsLocalization (M i) (S i)] :
    IsLocalization (.pi .univ M) (Π i, S i) where
  map_units' m := Pi.isUnit_iff.mpr fun i ↦ map_units _ ⟨m.1 i, m.2 i ⟨⟩⟩
  surj' z := by
    choose rm h using fun i ↦ surj (M := M i) (z i)
    exact ⟨(fun i ↦ (rm i).1, ⟨_, fun i _ ↦ (rm i).2.2⟩), funext h⟩
  exists_of_eq {x y} eq := by
    choose c hc using fun i ↦ exists_of_eq (M := M i) (congr_fun eq i)
    exact ⟨⟨_, fun i _ ↦ (c i).2⟩, funext hc⟩

variable (S' : Type*) [CommSemiring S'] [Algebra (Π i, R i) S'] (M : Submonoid (Π i, R i))

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/UniversalAlgebra/Pi/Variant1c37bb844839e95ad39853568490df0fc22db79391f6be62cfb43136f34d51f8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/UniversalAlgebra/Pi/Variant1c37bb844839e95ad39853568490df0fc22db79391f6be62cfb43136f34d51f8.lean#L38).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3bbc3621cff5ebe00850ff5a9de4d39505629aed` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
