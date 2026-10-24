# Float32.ofScientific

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:9f6a878c9a00af66a099fb23a8f68723a972b86727c61576b3e0307342f5972f",
  "kind": "def",
  "lexical_name": "Float32.ofScientific",
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
  "slug": "float32-ofscientific--01e13ffa7c4b0e31d2c476eb",
  "source": {
    "blob": "9f8ce97e722c2a9a7bd09dc24af98ca8c1f4400a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 114,
    "line": 102,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OfScientific/Variant8c3a33e4bb26d064bcdd7b88a2c7ea8fd8ef6fbdc32fa83480282241a85ebb42.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:01e13ffa7c4b0e31d2c476eb2f7f90074193decee55349580b307ddda5cf6ab9",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OfScientific/Variant8c3a33e4bb26d064bcdd7b88a2c7ea8fd8ef6fbdc32fa83480282241a85ebb42.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:9f6a878c9a00af66a099fb23a8f68723a972b86727c61576b3e0307342f5972f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 102–114.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[expose] protected def Float32.ofScientific (m :Nat) (s : Bool) (e : Nat) : Float32 :=
  -- See comments on `Float.ofScientific`.
  if h : m < 2 ^ 23 ∧ e ≤ 10 then
    let powerOfTen : Float32 :=
      exactlyRepresentablePowersOfTen[e]'(by simp [exactlyRepresentablePowersOfTen]; omega)
    if s then
      m.toUInt64.toFloat32 / powerOfTen
    else
      m.toUInt64.toFloat32 * powerOfTen
  else
    let e := if s then Int.negOfNat e else Int.ofNat e
    Float32.ofModel (Float32.Model.ofScientific m e)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OfScientific/Variant8c3a33e4bb26d064bcdd7b88a2c7ea8fd8ef6fbdc32fa83480282241a85ebb42.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OfScientific/Variant8c3a33e4bb26d064bcdd7b88a2c7ea8fd8ef6fbdc32fa83480282241a85ebb42.lean#L102).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9f8ce97e722c2a9a7bd09dc24af98ca8c1f4400a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
