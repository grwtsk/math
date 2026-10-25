# Fix.ind

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:32948c18-3137-bc58-d474-8b1ca0038b8f",
  "kind": "theorem",
  "lexical_name": "Fix.ind",
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
  "slug": "fix-ind--bcf4aa3e397821d0d28944fa",
  "source": {
    "blob": "ff283b262d1541a6a5351960ecd90d922896958c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 333,
    "line": 318,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Fix/Variant8898dc6c1e434bc8cb389de0b75e32004a65d73d68bd6d1a0184bf109ab68c49.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:bcf4aa3e397821d0d28944fa4af8dd2a23031e3e2189657fc04255c71c890bb4",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Fix/Variant8898dc6c1e434bc8cb389de0b75e32004a65d73d68bd6d1a0184bf109ab68c49.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:32948c18-3137-bc58-d474-8b1ca0038b8f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 318–333.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Fix.ind {α : TypeVec n} (p : Fix F α → Prop)
    (h : ∀ x : F (α.append1 (Fix F α)), LiftP (PredLast α p) x → p (Fix.mk x)) : ∀ x, p x := by
  apply Quot.ind
  intro x
  apply q.P.w_ind _ x; intro a f' f ih
  change p ⟦q.P.wMk a f' f⟧
  rw [← Fix.ind_aux a f' f]
  apply h
  rw [MvQPF.liftP_iff]
  refine' ⟨_, _, rfl, _⟩
  intro i j
  cases i
  · apply ih
  · trivial
#align mvqpf.fix.ind MvQPF.Fix.ind

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Fix/Variant8898dc6c1e434bc8cb389de0b75e32004a65d73d68bd6d1a0184bf109ab68c49.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Fix/Variant8898dc6c1e434bc8cb389de0b75e32004a65d73d68bd6d1a0184bf109ab68c49.lean#L318).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ff283b262d1541a6a5351960ecd90d922896958c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
