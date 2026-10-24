# pair

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:c835254fb82709db7ffbcfb9b037701501b064b115f43b714d5d213a19f41b8c",
  "kind": "def",
  "lexical_name": "pair",
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
  "slug": "pair--3120647843cbffb1ba6dae0f",
  "source": {
    "blob": "77a16f472c26732bfd0efc54bcf71a42445bc780",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 399,
    "line": 395,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/AEEqFun/Variantd3d498b1adc4ad349e31519cc2f543dbdfddcb88fa27e29e1bb94efc9995087f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:3120647843cbffb1ba6dae0f8b40c62235decc0a0bbe289046e3c01ba4619918",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/AEEqFun/Variantd3d498b1adc4ad349e31519cc2f543dbdfddcb88fa27e29e1bb94efc9995087f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:c835254fb82709db7ffbcfb9b037701501b064b115f43b714d5d213a19f41b8c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 395–399.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def pair (f : α →ₘ[μ] β) (g : α →ₘ[μ] γ) : α →ₘ[μ] β × γ :=
  Quotient.liftOn₂' f g (fun f g => mk (fun x => (f.1 x, g.1 x)) (f.2.prodMk g.2))
    fun _f _g _f' _g' Hf Hg => mk_eq_mk.2 <| Hf.prodMk Hg

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/AEEqFun/Variantd3d498b1adc4ad349e31519cc2f543dbdfddcb88fa27e29e1bb94efc9995087f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/AEEqFun/Variantd3d498b1adc4ad349e31519cc2f543dbdfddcb88fa27e29e1bb94efc9995087f.lean#L395).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `77a16f472c26732bfd0efc54bcf71a42445bc780` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
