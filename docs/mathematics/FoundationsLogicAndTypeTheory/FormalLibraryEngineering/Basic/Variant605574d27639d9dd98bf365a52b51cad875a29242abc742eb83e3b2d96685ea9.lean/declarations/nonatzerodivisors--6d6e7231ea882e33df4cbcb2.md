# NoNatZeroDivisors

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:06661bdd52b7d99273aa2e142306a2cfac425ec2b32ffbdb40d540d1fdf8caaf",
  "kind": "class",
  "lexical_name": "NoNatZeroDivisors",
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
  "slug": "nonatzerodivisors--6d6e7231ea882e33df4cbcb2",
  "source": {
    "blob": "b1ed048c129db011ca964d998214bbf59c6eaba6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 278,
    "line": 268,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant605574d27639d9dd98bf365a52b51cad875a29242abc742eb83e3b2d96685ea9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:6d6e7231ea882e33df4cbcb29dcf6de83264f8fcdaf05fcdce4a6921944b5702",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant605574d27639d9dd98bf365a52b51cad875a29242abc742eb83e3b2d96685ea9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `class` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:06661bdd52b7d99273aa2e142306a2cfac425ec2b32ffbdb40d540d1fdf8caaf`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 268–278.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
class NoNatZeroDivisors (α : Type u) [NatModule α] where
  /-- If `k * a ≠ k * b` then `k ≠ 0` or `a ≠ b`.-/
  no_nat_zero_divisors : ∀ (k : Nat) (a b : α), k ≠ 0 → k • a = k • b → a = b

export NoNatZeroDivisors (no_nat_zero_divisors)

namespace NoNatZeroDivisors

set_option linter.defProp false in
/-- Alternative constructor for `NoNatZeroDivisors` when we have an `IntModule`. -/
@[instance_reducible]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant605574d27639d9dd98bf365a52b51cad875a29242abc742eb83e3b2d96685ea9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant605574d27639d9dd98bf365a52b51cad875a29242abc742eb83e3b2d96685ea9.lean#L268).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b1ed048c129db011ca964d998214bbf59c6eaba6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
