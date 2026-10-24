# Pi.cons

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:fea6b0df99c67ebcea684632aafa079a7a500c0a1f9d2f190b14accffa92ea05",
  "kind": "def",
  "lexical_name": "Pi.cons",
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
  "slug": "pi-cons--cc0603c58ca7162a0d5d9f6d",
  "source": {
    "blob": "25f2cc0fffb7f1edbefb1d3ec6dd46dab1acbc3e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 218,
    "line": 212,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/FinEnum/Variant15f72949a8b426456b79453f1233217b0db782383ab9cd3c3de1f08c952245a4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:cc0603c58ca7162a0d5d9f6d2615a1eac887652c1f88fcf126ff8711c4d66dc5",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/FinEnum/Variant15f72949a8b426456b79453f1233217b0db782383ab9cd3c3de1f08c952245a4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:fea6b0df99c67ebcea684632aafa079a7a500c0a1f9d2f190b14accffa92ea05`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 212–218.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def Pi.cons [DecidableEq α] (x : α) (xs : List α) (y : β x) (f : ∀ a, a ∈ xs → β a) :
    ∀ a, a ∈ (x :: xs : List α) → β a
  | b, h => if h' : b = x then cast (by rw [h']) y else f b (List.mem_of_ne_of_mem h' h)
#align fin_enum.pi.cons FinEnum.Pi.cons

/-- Given `f` a function whose domain is `x :: xs`, produce a function whose domain
is restricted to `xs`.  -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/FinEnum/Variant15f72949a8b426456b79453f1233217b0db782383ab9cd3c3de1f08c952245a4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/FinEnum/Variant15f72949a8b426456b79453f1233217b0db782383ab9cd3c3de1f08c952245a4.lean#L212).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `25f2cc0fffb7f1edbefb1d3ec6dd46dab1acbc3e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
