# mem_rec_on

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:aa7e4617-ab04-5c0e-ae8a-7368a9ac4577",
  "kind": "theorem",
  "lexical_name": "mem_rec_on",
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
  "slug": "mem-rec-on--59fc9a5f9164c5416ee5e7c9",
  "source": {
    "blob": "8b1e72a24fa2f1b522335a16cdfc004e7559bad4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 546,
    "line": 523,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Seq/Variant018d404b8967dbd77adfb784d7b847949e7a8c92b58c8d0a97dd92a845a72365.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:59fc9a5f9164c5416ee5e7c9b47f552336f0d2d3d79ec265909986fa0ee70afa",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Seq/Variant018d404b8967dbd77adfb784d7b847949e7a8c92b58c8d0a97dd92a845a72365.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:aa7e4617-ab04-5c0e-ae8a-7368a9ac4577`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 523–546.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mem_rec_on {C : Seq α → Prop} {a s} (M : a ∈ s)
    (h1 : ∀ b s', a = b ∨ C s' → C (cons b s')) : C s := by
  obtain ⟨k, e⟩ := M; unfold Stream'.get at e
  induction' k with k IH generalizing s
  · have TH : s = cons a (tail s) := by
      apply destruct_eq_cons
      unfold destruct get? Functor.map
      rw [← e]
      rfl
    rw [TH]
    apply h1 _ _ (Or.inl rfl)
  cases s with
  | nil => injection e
  | cons b s' =>
    have h_eq : (cons b s').val (Nat.succ k) = s'.val k := by cases s' using Subtype.recOn; rfl
    rw [h_eq] at e
    apply h1 _ _ (Or.inr (IH e))

/-!
### Converting from/to other types
-/

/-- Embed a list as a sequence -/
@[coe]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Seq/Variant018d404b8967dbd77adfb784d7b847949e7a8c92b58c8d0a97dd92a845a72365.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Seq/Variant018d404b8967dbd77adfb784d7b847949e7a8c92b58c8d0a97dd92a845a72365.lean#L523).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8b1e72a24fa2f1b522335a16cdfc004e7559bad4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
