# IsEulerian.card_filter_odd_degree

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:00125540-b2a2-fbfe-ac06-49d8366a13eb",
  "kind": "theorem",
  "lexical_name": "IsEulerian.card_filter_odd_degree",
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
  "slug": "iseulerian-card-filter-odd-degree--112aa25db001508882d039cc",
  "source": {
    "blob": "a4a2dafbb356ef18f46b06931c3ff4b9e235146d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 185,
    "line": 171,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Trails/Variante94f577a959de9e2b88b699270e5d5fe81d1657c93621b04c6ee329bb92a4f36.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:112aa25db001508882d039cc552b28b2c97b824ba76f05094277d071cc0ee166",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Trails/Variante94f577a959de9e2b88b699270e5d5fe81d1657c93621b04c6ee329bb92a4f36.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:00125540-b2a2-fbfe-ac06-49d8366a13eb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 171–185.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem IsEulerian.card_filter_odd_degree [Fintype V] [DecidableRel G.Adj] {u v : V}
    {p : G.Walk u v} (ht : p.IsEulerian) {s} (h : s = ({ v | Odd (G.degree v) } : Finset V)) :
    s.card = 0 ∨ s.card = 2 := by
  subst s
  simp only [← Nat.not_even_iff_odd, Finset.card_eq_zero]
  simp only [ht.even_degree_iff, Ne, not_forall, not_and, Classical.not_not, exists_prop]
  obtain rfl | hn := eq_or_ne u v
  · simp
  · right
    convert_to _ = ({u, v} : Finset V).card
    · simp [hn]
    · congr
      ext x
      simp [hn, imp_iff_not_or]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Trails/Variante94f577a959de9e2b88b699270e5d5fe81d1657c93621b04c6ee329bb92a4f36.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Trails/Variante94f577a959de9e2b88b699270e5d5fe81d1657c93621b04c6ee329bb92a4f36.lean#L171).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a4a2dafbb356ef18f46b06931c3ff4b9e235146d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
