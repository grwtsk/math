# chooseX

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:7bb77f88483acefbe1ef1db4792732d9bc642f742c2daf768fff55638be68515",
  "kind": "def",
  "lexical_name": "chooseX",
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
  "slug": "choosex--902dfd977f3cf418b958afc2",
  "source": {
    "blob": "5ada2ea5263a1ce077752f1040a3f6ed1894c2de",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 3062,
    "line": 3045,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Basic/Variantfca94177a3ea2c50cb00b0d11b7a8d5111c134ac475fb35cb482ee33b05286f7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:902dfd977f3cf418b958afc25c478d93ca89665627902a49ffcfb25fdeb38ee1",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Basic/Variantfca94177a3ea2c50cb00b0d11b7a8d5111c134ac475fb35cb482ee33b05286f7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:7bb77f88483acefbe1ef1db4792732d9bc642f742c2daf768fff55638be68515`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 3045–3062.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def chooseX : ∀ _hp : ∃! a, a ∈ l ∧ p a, { a // a ∈ l ∧ p a } :=
  Quotient.recOn l (fun l' ex_unique => List.chooseX p l' (ExistsUnique.exists ex_unique))
    (by
      intros a b _
      funext hp
      suffices all_equal : ∀ x y : { t // t ∈ b ∧ p t }, x = y
      · apply all_equal
      · rintro ⟨x, px⟩ ⟨y, py⟩
        rcases hp with ⟨z, ⟨_z_mem_l, _pz⟩, z_unique⟩
        congr
        calc
          x = z := z_unique x px
          _ = y := (z_unique y py).symm
          )
#align multiset.choose_x Multiset.chooseX

/-- Given a proof `hp` that there exists a unique `a ∈ l` such that `p a`, `choose p l hp` returns
that `a`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Basic/Variantfca94177a3ea2c50cb00b0d11b7a8d5111c134ac475fb35cb482ee33b05286f7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Basic/Variantfca94177a3ea2c50cb00b0d11b7a8d5111c134ac475fb35cb482ee33b05286f7.lean#L3045).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5ada2ea5263a1ce077752f1040a3f6ed1894c2de` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
