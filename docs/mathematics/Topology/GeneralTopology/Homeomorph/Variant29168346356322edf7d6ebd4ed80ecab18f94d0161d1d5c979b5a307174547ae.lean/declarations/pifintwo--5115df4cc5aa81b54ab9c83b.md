# piFinTwo.

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:57734a7d0b604d54b33d06d977d44420b9ba39f28ee241005bf28ee38978295c",
  "kind": "def",
  "lexical_name": "piFinTwo.",
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
  "slug": "pifintwo--5115df4cc5aa81b54ab9c83b",
  "source": {
    "blob": "59c70be60616f07ca272b74fba5111a136ef604f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 646,
    "line": 639,
    "path": "GRWTSK/Topology/GeneralTopology/Homeomorph/Variant29168346356322edf7d6ebd4ed80ecab18f94d0161d1d5c979b5a307174547ae.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:5115df4cc5aa81b54ab9c83b5f4ece72026dc01f64aa5a58fa76380afa2b66bf",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Homeomorph/Variant29168346356322edf7d6ebd4ed80ecab18f94d0161d1d5c979b5a307174547ae.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:57734a7d0b604d54b33d06d977d44420b9ba39f28ee241005bf28ee38978295c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 639–646.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def piFinTwo.{u} (α : Fin 2 → Type u) [∀ i, TopologicalSpace (α i)] : (∀ i, α i) ≃ₜ α 0 × α 1 where
  toEquiv := piFinTwoEquiv α
  continuous_toFun := (continuous_apply 0).prod_mk (continuous_apply 1)
  continuous_invFun := continuous_pi <| Fin.forall_fin_two.2 ⟨continuous_fst, continuous_snd⟩
#align homeomorph.pi_fin_two Homeomorph.piFinTwo

/-- Homeomorphism between `α² = Fin 2 → α` and `α × α`. -/
@[simps! (config := { fullyApplied := false })]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Homeomorph/Variant29168346356322edf7d6ebd4ed80ecab18f94d0161d1d5c979b5a307174547ae.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Homeomorph/Variant29168346356322edf7d6ebd4ed80ecab18f94d0161d1d5c979b5a307174547ae.lean#L639).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `59c70be60616f07ca272b74fba5111a136ef604f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
