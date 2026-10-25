# withBotDegree_le_withBotDegree_of_support_subset

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "4331e659800060ce6c850000140409cbfa369a5e",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 1130,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/d2/d21c43bf9503c6521fbb75840f21daf3243cc801dfc62bf4f95cdf03c96835fd.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:fec50946-22de-2fe0-067f-66e6a443b0fc",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:ad456338-6794-55a0-8b99-0fe82b15fd37",
  "kind": "lemma",
  "lexical_name": "withBotDegree_le_withBotDegree_of_support_subset",
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
  "slug": "withbotdegree-le-withbotdegree-of-support-subset--cda6d74373650958c104463d",
  "source": {
    "blob": "4331e659800060ce6c850000140409cbfa369a5e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1170,
    "line": 1130,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/MonomialOrder/Variantd21c43bf9503c6521fbb75840f21daf3243cc801dfc62bf4f95cdf03c96835fd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:cda6d74373650958c104463d7e88f1cb75d48e4214793e545e295bb29c049a96",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/MonomialOrder/Variantd21c43bf9503c6521fbb75840f21daf3243cc801dfc62bf4f95cdf03c96835fd.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ad456338-6794-55a0-8b99-0fe82b15fd37`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1130–1170.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma withBotDegree_le_withBotDegree_of_support_subset
    (h : f.support ⊆ g.support) :
    m.withBotDegree f ≼'[m] m.withBotDegree g := by
  by_cases hg : g = 0
  · simpa [hg] using h
  rw [m.withBotDegree_le_withBotDegree_iff_of_ne_zero _ hg]
  exact m.degree_le_degree_of_support_subset h

end withBotDegree

end Semiring

section Ring

variable {R : Type*} [CommRing R]

variable (m) in
/-- The S-polynomial of two polynomials.

Denoting

- the leading monomial of polynomial $f$ and $g$ as $lm(f)$ and $lm(g)$,
- the leading coefficient of $f$ and $g$ as $lc(f)$ and $lc(g)$
  (formalized as `m.leadingCoeff f` and `m.leadingCoeff g`), and
- the least common multiple of $lm(f)$ and $lm(g)$ as $lcm(lm(f),lm(g))$,

the S-polynomial of $f$ and $g$ is defined as
$$sPoly(f,g) := (lcm(lm(f),lm(g)) / lm(f)) * lc(g) * f - (lcm(lm(f),lm(g)) / lm(g)) * lc(f) * g.$$

$(lcm(lm(f),lm(g)) / lm(f))$ and $lcm(lm(f),lm(g)) / lm(g)$ is formalized as
`monomial (m.degree g - m.degree f) 1` and `monomial (m.degree g - m.degree f) 1`, while there is
also another more direct formalization in `sPolynomial_def`.

Notice that, when the polynomial ring is over a field, S-polynomial is usually defined as
$$sPoly'(f,g) :=
  (lcm(lm(f),lm(g)) / (lm(f) * lc(f))) * f - (lcm(lm(f),lm(g)) / (lm(g) * lc(g))) * g,$$
while we avoid inverting $lc(f)$ and $lc(g)$ in this formalization so that it doesn't require a
field or units (`IsUnit`) over ring.

An equality between these two versions holds: $$sPoly(f,g) = lc(f) * lc(g) * sPoly'(f,g).$$
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/MonomialOrder/Variantd21c43bf9503c6521fbb75840f21daf3243cc801dfc62bf4f95cdf03c96835fd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/MonomialOrder/Variantd21c43bf9503c6521fbb75840f21daf3243cc801dfc62bf4f95cdf03c96835fd.lean#L1130).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4331e659800060ce6c850000140409cbfa369a5e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
