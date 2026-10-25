# fixInduction'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:d3deacfd17e67d881df082a6ad83f7374cf1e7d3cffcbbc7b8df9cef9c9ecf0b",
  "kind": "def",
  "lexical_name": "fixInduction'",
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
  "slug": "fixinduction--b881d855928878a0e958ec7f",
  "source": {
    "blob": "4bd2825be72e64cf08fdbc48520df16c11ef7e7d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 364,
    "line": 354,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/PFun/Variantca5494d7e1101fa1a84664e7ae04fc0a35451c84b856d4a13fe5ffb4005c74f4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:b881d855928878a0e958ec7f64c38f2425a44138a196f517e885300d73b4c7db",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/PFun/Variantca5494d7e1101fa1a84664e7ae04fc0a35451c84b856d4a13fe5ffb4005c74f4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:d3deacfd17e67d881df082a6ad83f7374cf1e7d3cffcbbc7b8df9cef9c9ecf0b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 354–364.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def fixInduction' {C : α → Sort*} {f : α →. Sum β α} {b : β} {a : α}
    (h : b ∈ f.fix a) (hbase : ∀ a_final : α, Sum.inl b ∈ f a_final → C a_final)
    (hind : ∀ a₀ a₁ : α, b ∈ f.fix a₁ → Sum.inr a₁ ∈ f a₀ → C a₁ → C a₀) : C a := by
  refine' fixInduction h fun a' h ih => _
  rcases e : (f a').get (dom_of_mem_fix h) with b' | a'' <;> replace e : _ ∈ f a' := ⟨_, e⟩
  · apply hbase
    convert e
    exact Part.mem_unique h (fix_stop e)
  · exact hind _ _ (fix_fwd h e) e (ih _ e)
#align pfun.fix_induction' PFun.fixInduction'

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/PFun/Variantca5494d7e1101fa1a84664e7ae04fc0a35451c84b856d4a13fe5ffb4005c74f4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/PFun/Variantca5494d7e1101fa1a84664e7ae04fc0a35451c84b856d4a13fe5ffb4005c74f4.lean#L354).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4bd2825be72e64cf08fdbc48520df16c11ef7e7d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
