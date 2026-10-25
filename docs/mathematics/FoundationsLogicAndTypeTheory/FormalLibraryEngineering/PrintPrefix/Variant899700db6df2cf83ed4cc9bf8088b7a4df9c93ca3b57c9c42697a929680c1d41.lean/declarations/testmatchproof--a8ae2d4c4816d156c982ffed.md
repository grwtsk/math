# testMatchProof

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:469fe6b738bf21aa6aa804bc6809d829882ecfbd32dcc242492cb297a407a49f",
  "kind": "def",
  "lexical_name": "testMatchProof",
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
  "slug": "testmatchproof--a8ae2d4c4816d156c982ffed",
  "source": {
    "blob": "4780d3a79d75d05ae004561c4bdaba81b0738e5b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 159,
    "line": 139,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PrintPrefix/Variant899700db6df2cf83ed4cc9bf8088b7a4df9c93ca3b57c9c42697a929680c1d41.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:a8ae2d4c4816d156c982ffed5da415a0496a43077b70fb852dade28ffe5cc9c3",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PrintPrefix/Variant899700db6df2cf83ed4cc9bf8088b7a4df9c93ca3b57c9c42697a929680c1d41.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:469fe6b738bf21aa6aa804bc6809d829882ecfbd32dcc242492cb297a407a49f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 139–159.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def testMatchProof : (n : Nat) → Fin n → Unit
  | _,  ⟨0, _⟩ => ()
  | Nat.succ as, ⟨Nat.succ i, h⟩ => testMatchProof as ⟨i, Nat.le_of_succ_le_succ h⟩

/-- info: testMatchProof (n : Nat) : Fin n → Unit -/
#guard_msgs in
#print prefix testMatchProof

/--
info: testMatchProof (n : Nat) : Fin n → Unit
testMatchProof._f (x✝ : Nat) (f : Nat.below (motive := fun x => Fin x → Unit) x✝) : Fin x✝ → Unit
testMatchProof._proof_1 (as i : Nat) (h : i.succ < as.succ) : i.succ ≤ as
testMatchProof._sunfold (n : Nat) : Fin n → Unit
testMatchProof._unsafe_rec (n : Nat) : Fin n → Unit
testMatchProof.match_1.{u_1} (motive : (x : Nat) → Fin x → Sort u_1) (x✝ : Nat) (x✝¹ : Fin x✝)
  (h_1 : (n : Nat) → (isLt : 0 < n) → motive n ⟨0, isLt⟩)
  (h_2 : (as i : Nat) → (h : i.succ < as.succ) → motive as.succ ⟨i.succ, h⟩) : motive x✝ x✝¹
-/
#guard_msgs in
#print prefix +internals testMatchProof

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PrintPrefix/Variant899700db6df2cf83ed4cc9bf8088b7a4df9c93ca3b57c9c42697a929680c1d41.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PrintPrefix/Variant899700db6df2cf83ed4cc9bf8088b7a4df9c93ca3b57c9c42697a929680c1d41.lean#L139).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4780d3a79d75d05ae004561c4bdaba81b0738e5b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
