# stmts₁_supportsStmt_mono

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:bb252747-4f6a-cfd3-9c45-570445206fcd",
  "kind": "theorem",
  "lexical_name": "stmts₁_supportsStmt_mono",
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
  "slug": "stmts-supportsstmt-mono--540791c12bc2137f630203d1",
  "source": {
    "blob": "ff3c8d98086c1766a674afbe0dba144815751274",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 630,
    "line": 618,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/Computability/PostTuringMachine/Variant510babc15f4750a3dce1f3bfb562ad45ffb00c052b80e8f6aa1b221cda14cf38.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:540791c12bc2137f630203d1e06917d1e9b16f1275ef82354039ae4d2145833d",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/Computability/PostTuringMachine/Variant510babc15f4750a3dce1f3bfb562ad45ffb00c052b80e8f6aa1b221cda14cf38.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:bb252747-4f6a-cfd3-9c45-570445206fcd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 618–630.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem stmts₁_supportsStmt_mono {S : Finset Λ} {q₁ q₂ : Stmt Γ Λ σ} (h : q₁ ∈ stmts₁ q₂)
    (hs : SupportsStmt S q₂) : SupportsStmt S q₁ := by
  induction q₂ with
    simp only [stmts₁, SupportsStmt, Finset.mem_insert, Finset.mem_union, Finset.mem_singleton]
      at h hs
  | branch p q₁ q₂ IH₁ IH₂ => rcases h with (rfl | h | h); exacts [hs, IH₁ h hs.1, IH₂ h hs.2]
  | goto l => subst h; exact hs
  | halt => subst h; trivial
  | _ _ q IH => rcases h with (rfl | h) <;> [exact hs; exact IH h hs]

open scoped Classical in
/-- The set of all statements in a Turing machine, plus one extra value `none` representing the
halt state. This is used in the TM1 to TM0 reduction. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/Computability/PostTuringMachine/Variant510babc15f4750a3dce1f3bfb562ad45ffb00c052b80e8f6aa1b221cda14cf38.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/Computability/PostTuringMachine/Variant510babc15f4750a3dce1f3bfb562ad45ffb00c052b80e8f6aa1b221cda14cf38.lean#L618).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ff3c8d98086c1766a674afbe0dba144815751274` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
