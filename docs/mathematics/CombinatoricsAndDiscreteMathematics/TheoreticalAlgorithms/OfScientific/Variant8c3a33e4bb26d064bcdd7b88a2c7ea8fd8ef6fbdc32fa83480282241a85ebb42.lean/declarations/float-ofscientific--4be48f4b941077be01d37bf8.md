# Float.ofScientific

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:b9bf50553ac71c6cc6c5a5dbec276f0f8985e50d1dba748422e8457abe8aa262",
  "kind": "def",
  "lexical_name": "Float.ofScientific",
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
  "slug": "float-ofscientific--4be48f4b941077be01d37bf8",
  "source": {
    "blob": "9f8ce97e722c2a9a7bd09dc24af98ca8c1f4400a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 67,
    "line": 43,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OfScientific/Variant8c3a33e4bb26d064bcdd7b88a2c7ea8fd8ef6fbdc32fa83480282241a85ebb42.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:4be48f4b941077be01d37bf86cda6845cc0301436fda44d8e872d18a07827859",
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

Occurrence: `declaration:b9bf50553ac71c6cc6c5a5dbec276f0f8985e50d1dba748422e8457abe8aa262`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 43–67.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

````lean
@[expose] protected def Float.ofScientific (m : Nat) (s : Bool) (e : Nat) : Float :=
  if h : m < 2 ^ 53 ∧ e ≤ 22 then
    -- Fast case: both `m` and `10 ^ e` are representable as floats.
    let powerOfTen : Float :=
      exactlyRepresentablePowersOfTen[e]'(by simp [exactlyRepresentablePowersOfTen]; omega)
    if s then
      m.toUInt64.toFloat / powerOfTen
    else
      m.toUInt64.toFloat * powerOfTen
  else
    -- Slow case. Implementing this efficiently is difficult. The comparatively simple algorithm at
    -- https://www.exploringbinary.com/correct-decimal-to-floating-point-using-big-integers/
    -- is difficult to get right in the case of subnormals and isn't faster than just going through
    -- the model. So, we go through the model.
    let e := if s then Int.negOfNat e else Int.ofNat e
    Float.ofModel (Float.Model.ofScientific m e)

/--
  The `OfScientific Float` must have priority higher than `mid` since
  the default instance `Neg Int` has `mid` priority.
  ```
  #check -42.0 -- must be Float
  ```
-/
@[default_instance mid+1]
````

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OfScientific/Variant8c3a33e4bb26d064bcdd7b88a2c7ea8fd8ef6fbdc32fa83480282241a85ebb42.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OfScientific/Variant8c3a33e4bb26d064bcdd7b88a2c7ea8fd8ef6fbdc32fa83480282241a85ebb42.lean#L43).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9f8ce97e722c2a9a7bd09dc24af98ca8c1f4400a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
