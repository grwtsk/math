# Multipliable.mono_filter

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ec441eef-84cc-2e7c-25ba-641dbe19684c",
  "kind": "lemma",
  "lexical_name": "Multipliable.mono_filter",
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
  "slug": "multipliable-mono-filter--b0ff8552f870d23e593edb1a",
  "source": {
    "blob": "5eea642412efb00d245fe76f35f0cf065fb7d648",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 170,
    "line": 126,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Defs/Variant3a3c03afc883cb2416fb07fd1bf52156fa19410b68841a100eaf476aa74db64d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b0ff8552f870d23e593edb1adef3b6d0a67a9ba01e705aab889137f96f999b7d",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Defs/Variant3a3c03afc883cb2416fb07fd1bf52156fa19410b68841a100eaf476aa74db64d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ec441eef-84cc-2e7c-25ba-641dbe19684c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 126–170.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma Multipliable.mono_filter {f : β → α} {L₁ L₂ : SummationFilter β}
    (hf : Multipliable f L₂) (h : L₁.filter ≤ L₂.filter) : Multipliable f L₁ :=
  match hf with | ⟨a, ha⟩ => ⟨a, ha.mono_left h⟩

open scoped Classical in
/-- `∏' i, f i` is the unconditional product of `f`, if it exists, or 1 otherwise.

More generally, if `L` is a `SummationFilter`, `∏'[L] i, f i` is the product of `f` with respect to
`L` if it exists, and `1` otherwise.

(Note that even if the unconditional product exists, it might not be unique if the topology is not
separated. When the multiplicative support of `f` is finite, we make the most reasonable choice,
to use the product over the multiplicative support. Otherwise, we choose arbitrarily an `a`
satisfying `HasProd f a`. Similar remarks apply to more general summation filters.) -/
@[to_additive /-- `∑' i, f i` is the unconditional sum of `f` if it exists, or 0 otherwise.

More generally, if `L` is a `SummationFilter`, `∑'[L] i, f i` is the sum of `f` with respect to
`L` if it exists, and `0` otherwise.

(Note that even if the unconditional sum exists, it might not be unique if the topology is not
separated. When the support of `f` is finite, we make the most reasonable choice, to use the sum
over the support. Otherwise, we choose arbitrarily an `a` satisfying `HasSum f a`. Similar remarks
apply to more general summation filters.)
-/]
noncomputable irreducible_def tprod (f : β → α) (L := unconditional β) :=
  if h : Multipliable f L then
    if L.HasSupport ∧ (mulSupport f ∩ L.support).Finite then finprod (L.support.mulIndicator f)
    else if HasProd f 1 L then 1
    else h.choose
  else 1

variable {L : SummationFilter β}

@[inherit_doc tprod]
notation3 "∏'[" L "]" (...)", "r:67:(scoped f => tprod f L) => r
@[inherit_doc tsum]
notation3 "∑'[" L "]" (...)", "r:67:(scoped f => tsum f L) => r

-- see note [operator precedence of big operators]
@[inherit_doc tprod]
notation3 "∏' "(...)", "r:67:(scoped f => tprod f (unconditional _)) => r
@[inherit_doc tsum]
notation3 "∑' "(...)", "r:67:(scoped f => tsum f (unconditional _)) => r

@[to_additive]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Defs/Variant3a3c03afc883cb2416fb07fd1bf52156fa19410b68841a100eaf476aa74db64d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Defs/Variant3a3c03afc883cb2416fb07fd1bf52156fa19410b68841a100eaf476aa74db64d.lean#L126).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5eea642412efb00d245fe76f35f0cf065fb7d648` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
