# card_finsupp

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f9c73555-1f0a-b412-a54f-9ab58762f92e",
  "kind": "theorem",
  "lexical_name": "card_finsupp",
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
  "slug": "card-finsupp--cc7c79da31f6910ccf77f48d",
  "source": {
    "blob": "93078ae00f8a508a1eaeaed11d39e46aecf90621",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 92,
    "line": 82,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Finsupp/Variant6676c77ab99ed1e8e00850d6975c12d223d91f3b1b14c6eb5c00bc0ae5cf6f9a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:cc7c79da31f6910ccf77f48dd57ba4a4ede485d1f86a105badc1b4e9b68b0b0b",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Finsupp/Variant6676c77ab99ed1e8e00850d6975c12d223d91f3b1b14c6eb5c00bc0ae5cf6f9a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f9c73555-1f0a-b412-a54f-9ab58762f92e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 82–92.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem card_finsupp (s : Finset ι) (t : ι → Finset α) : #(s.finsupp t) = ∏ i ∈ s, #(t i) := by
  classical exact (card_map _).trans <| card_pi _ _

end Finset

open Finset

namespace Finsupp

/-- Given a finitely supported function `f : ι →₀ Finset α`, one can define the finset
`f.pi` of all finitely supported functions whose value at `i` is in `f i` for all `i`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Finsupp/Variant6676c77ab99ed1e8e00850d6975c12d223d91f3b1b14c6eb5c00bc0ae5cf6f9a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Finsupp/Variant6676c77ab99ed1e8e00850d6975c12d223d91f3b1b14c6eb5c00bc0ae5cf6f9a.lean#L82).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `93078ae00f8a508a1eaeaed11d39e46aecf90621` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
