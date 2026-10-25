# proveNatSqrt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:9b3dbcd31c3e2d9ed11e4e2f9f53dbdf33529936c9ead648a9bbad6e2f8c397e",
  "kind": "def",
  "lexical_name": "proveNatSqrt",
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
  "slug": "provenatsqrt--23a5e4acc06cc650f945fde5",
  "source": {
    "blob": "9108c2d9fb9196180732ea2fea8fbd8d80e42678",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 51,
    "line": 38,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NatSqrt/Variant3903ac310ad97a8a3f21fb020898124bd77414475d5fce668f3912d43edd52cc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:23a5e4acc06cc650f945fde5201886f2d3c9a00b56b545d27ced43c7b9eaf2c5",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NatSqrt/Variant3903ac310ad97a8a3f21fb020898124bd77414475d5fce668f3912d43edd52cc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:9b3dbcd31c3e2d9ed11e4e2f9f53dbdf33529936c9ead648a9bbad6e2f8c397e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 38–51.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def proveNatSqrt (ex : Q(ℕ)) : (ey : Q(ℕ)) × Q(Nat.sqrt $ex = $ey) :=
  match ex.natLit! with
  | 0 => show (ey : Q(ℕ)) × Q(Nat.sqrt 0 = $ey) from ⟨mkRawNatLit 0, q(Nat.sqrt_zero)⟩
  | 1 => show (ey : Q(ℕ)) × Q(Nat.sqrt 1 = $ey) from ⟨mkRawNatLit 1, q(Nat.sqrt_one)⟩
  | x =>
    let y := Nat.sqrt x
    have ey : Q(ℕ) := mkRawNatLit y
    have er : Q(ℕ) := mkRawNatLit (x - y * y)
    have hr : Q($ey * $ey + $er = $ex) := (q(Eq.refl $ex) : Expr)
    have hle : Q(Nat.ble $er (2 * $ey)) := (q(Eq.refl true) : Expr)
    ⟨ey, q(nat_sqrt_helper $hr $hle)⟩

/-- Evaluates the `Nat.sqrt` function. -/
@[norm_num Nat.sqrt _]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NatSqrt/Variant3903ac310ad97a8a3f21fb020898124bd77414475d5fce668f3912d43edd52cc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NatSqrt/Variant3903ac310ad97a8a3f21fb020898124bd77414475d5fce668f3912d43edd52cc.lean#L38).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9108c2d9fb9196180732ea2fea8fbd8d80e42678` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
