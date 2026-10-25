# getFinValue?

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:8b595b789235b79aafbcb7ee3478c9e91e8e812f410d15ed38c7fcf9f78db67d",
  "kind": "def",
  "lexical_name": "getFinValue?",
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
  "slug": "getfinvalue--d2546dd9b0dfb27c1f88e071",
  "source": {
    "blob": "afb3fb11c0e3c478ba6847da7d6052fec63ff431",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 98,
    "line": 85,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LitValues/Variantdddea2aaaad2c6531fcc7193c7a98b26b0e6cfda2e1d162ff617a10eaa62f6f8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:d2546dd9b0dfb27c1f88e071668dfb0ef962ab2a298b21886c3c79bec355b51c",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LitValues/Variantdddea2aaaad2c6531fcc7193c7a98b26b0e6cfda2e1d162ff617a10eaa62f6f8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:8b595b789235b79aafbcb7ee3478c9e91e8e812f410d15ed38c7fcf9f78db67d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 85–98.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def getFinValue? (e : Expr) : MetaM (Option ((n : Nat) × Fin n)) := OptionT.run do
  let (v, type) ← getOfNatValue? e ``Fin
  let n ← getNatValue? (← whnfD type.appArg!)
  match n with
  | 0 => failure
  | m+1 => return ⟨m+1, Fin.ofNat _ v⟩

/--
Return `some ⟨n, v⟩` if `e` is:
- an `OfNat.ofNat` application
- a `BitVec.ofNat` application
- a `BitVec.ofNatLT` application
that encode a `BitVec n` with value `v`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LitValues/Variantdddea2aaaad2c6531fcc7193c7a98b26b0e6cfda2e1d162ff617a10eaa62f6f8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LitValues/Variantdddea2aaaad2c6531fcc7193c7a98b26b0e6cfda2e1d162ff617a10eaa62f6f8.lean#L85).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `afb3fb11c0e3c478ba6847da7d6052fec63ff431` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
