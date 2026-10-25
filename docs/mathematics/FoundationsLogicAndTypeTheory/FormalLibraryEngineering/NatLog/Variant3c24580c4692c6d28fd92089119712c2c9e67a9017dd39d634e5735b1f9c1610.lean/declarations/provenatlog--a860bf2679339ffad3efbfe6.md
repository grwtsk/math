# proveNatLog

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:c959a2cdf79222d89bdd9a0c8b11fd971527ffe416d4d74438daccd01da036c6",
  "kind": "def",
  "lexical_name": "proveNatLog",
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
  "slug": "provenatlog--a860bf2679339ffad3efbfe6",
  "source": {
    "blob": "065afcfb7e6c2870f635b3e984b700da9d2292e6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 66,
    "line": 48,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NatLog/Variant3c24580c4692c6d28fd92089119712c2c9e67a9017dd39d634e5735b1f9c1610.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:a860bf2679339ffad3efbfe66ea8f649aa81719e68ba994ddf42f5643fba13e7",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NatLog/Variant3c24580c4692c6d28fd92089119712c2c9e67a9017dd39d634e5735b1f9c1610.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:c959a2cdf79222d89bdd9a0c8b11fd971527ffe416d4d74438daccd01da036c6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 48–66.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def proveNatLog (eb en : Q(ℕ)) : (ek : Q(ℕ)) × Q(Nat.log $eb $en = $ek) :=
  match eb.natLit!, en.natLit! with
  | 0, _ => show (ek : Q(ℕ)) × Q(Nat.log 0 $en = $ek) from ⟨mkRawNatLit 0, q(nat_log_zero $en)⟩
  | 1, _ => show (ek : Q(ℕ)) × Q(Nat.log 1 $en = $ek) from ⟨mkRawNatLit 0, q(nat_log_one $en)⟩
  | b, n =>
    if n < b then
      have hh : Q(Nat.blt $en $eb = true) := (q(Eq.refl true) : Expr)
      ⟨mkRawNatLit 0, q(nat_log_helper0 $eb $en $hh)⟩
    else
      let k := Nat.log b n
      have ek : Q(ℕ) := mkRawNatLit k
      have hl : Q(Nat.ble ($eb ^ $ek) $en = true) := (q(Eq.refl true) : Expr)
      have hh : Q(Nat.blt $en ($eb ^ ($ek + 1)) = true) := (q(Eq.refl true) : Expr)
      ⟨ek, q(nat_log_helper $eb $en $ek $hl $hh)⟩

/--
Evaluates the `Nat.log` function.
-/
@[norm_num Nat.log _ _]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NatLog/Variant3c24580c4692c6d28fd92089119712c2c9e67a9017dd39d634e5735b1f9c1610.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NatLog/Variant3c24580c4692c6d28fd92089119712c2c9e67a9017dd39d634e5735b1f9c1610.lean#L48).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `065afcfb7e6c2870f635b3e984b700da9d2292e6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
