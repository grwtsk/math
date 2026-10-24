# Hom.mapKer

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:ff41de6006564f21cfda015c553633b56f95a009a7cce05346c35be86906e60f",
  "kind": "def",
  "lexical_name": "Hom.mapKer",
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
  "slug": "hom-mapker--bb8f2693c8e52d9a6f10ba80",
  "source": {
    "blob": "d3a317ffc4aafcc9e4204e5f16639e3e1a7b21a3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 256,
    "line": 241,
    "path": "GRWTSK/Algebra/Basic/Variant18e8703c0e2255560e76442f305cdec99ba37354025273a887b9e19ad546c779.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:bb8f2693c8e52d9a6f10ba800a7e680fe48acaf21405ab5ba50dbcfbe097bfbd",
  "verification": {
    "reference": "docs/verification/Algebra/Basic/Variant18e8703c0e2255560e76442f305cdec99ba37354025273a887b9e19ad546c779.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:ff41de6006564f21cfda015c553633b56f95a009a7cce05346c35be86906e60f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 241–256.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def Hom.mapKer (f : P.Hom P')
    [alg : Algebra P.Ring P'.Ring] (halg : algebraMap P.Ring P'.Ring = f.toRingHom) :
    P.ker →ₗ[P.Ring] P'.ker where
  toFun x := ⟨f.toRingHom x, by simp [show algebraMap P.Ring S x = 0 from x.2]⟩
  map_add' _ _ := Subtype.ext (map_add _ _ _)
  map_smul' := by simp [Algebra.smul_def, ← halg]

end

end Hom

section Infinitesimal

/-- Given an `R`-algebra extension `0 → I → P → S → 0` of `S`,
the infinitesimal extension associated to it is `0 → I/I² → P/I² → S → 0`. -/
noncomputable
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Basic/Variant18e8703c0e2255560e76442f305cdec99ba37354025273a887b9e19ad546c779.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Basic/Variant18e8703c0e2255560e76442f305cdec99ba37354025273a887b9e19ad546c779.lean#L241).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d3a317ffc4aafcc9e4204e5f16639e3e1a7b21a3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
