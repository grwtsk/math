# sqrtCore

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:fc273003b162e20cec5263b107e41288293ee16cba24ae426421f659a30ca4f9",
  "kind": "def",
  "lexical_name": "sqrtCore",
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
  "slug": "sqrtcore--bdecad6054a15c0584af17da",
  "source": {
    "blob": "ea0beff28fdd12d2225f831ab87cc5575e9a18a6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 50,
    "line": 31,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Sqrt/Variant1a1c88ae9fb900ddebeaf17cf0165013a29fb29f0557eb22c98066006c86bedf.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:bdecad6054a15c0584af17daf86091f4f09b48404b0757e456fff2d92f2235e7",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Sqrt/Variant1a1c88ae9fb900ddebeaf17cf0165013a29fb29f0557eb22c98066006c86bedf.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:fc273003b162e20cec5263b107e41288293ee16cba24ae426421f659a30ca4f9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 31–50.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def sqrtCore (spec : Format) (m : Nat) (e : Int) : Nat × Int × Accuracy :=
  -- Here we shift so that the input is represented as `m * 2 ^ (2 * targetExponent)`, where `m` has
  -- so many bits that `sqrt m` still has enough bits for the specified format.
  let targetExponent := min (e.ediv 2) (spec.targetExponent ((totalExponent m e + 1).ediv 2))
  let shiftAmount := (e - 2 * targetExponent).toNat
  let m := m <<< shiftAmount

  let root := Nat.sqrt m
  let rem := m - root * root

  -- Let x := Real.sqrt m. Then
  -- `x < root + 1/2` ↔ `x^2 < root^2 + root + 1/4` ↔ `rem < root + 1/4` ↔ `rem ≤ root`.
  -- `x = root + 1/2` is impossible.
  let accuracy : Accuracy := if rem = 0 then .exact else .inexact (if rem ≤ root then .lt else .gt)
  (root, targetExponent, accuracy)

/--
Computes the square root of a floating-point number and rounds the result according to the given
specification.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Sqrt/Variant1a1c88ae9fb900ddebeaf17cf0165013a29fb29f0557eb22c98066006c86bedf.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Sqrt/Variant1a1c88ae9fb900ddebeaf17cf0165013a29fb29f0557eb22c98066006c86bedf.lean#L31).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ea0beff28fdd12d2225f831ab87cc5575e9a18a6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
