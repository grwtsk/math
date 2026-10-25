# sum

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:fe169f9f22d5111b2394e81e05496657f1f70ecb34229fa591c6e686ffa15902",
  "kind": "instance",
  "lexical_name": "sum",
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
  "slug": "sum--c5eb1c83ccd112efe2bd15cf",
  "source": {
    "blob": "9110d826d1fb40ed5f4b187ea47afb758314131e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 773,
    "line": 751,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant5344925eaac8f4986fcddd987ba85da3489b2daad2041d4d43ed15b1075f02e3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:c5eb1c83ccd112efe2bd15cf684fdcbf44eebd630d01a0af299f4d1743922d09",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant5344925eaac8f4986fcddd987ba85da3489b2daad2041d4d43ed15b1075f02e3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:fe169f9f22d5111b2394e81e05496657f1f70ecb34229fa591c6e686ffa15902`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 751–773.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance sum : Primcodable (α ⊕ β) :=
  ⟨Primrec.nat_iff.1 <|
      (encode_iff.2
            (cond nat_bodd
              (((@Primrec.decode β _).comp nat_div2).option_map <|
                to₂ <| nat_double_succ.comp (Primrec.encode.comp snd))
              (((@Primrec.decode α _).comp nat_div2).option_map <|
                to₂ <| nat_double.comp (Primrec.encode.comp snd)))).of_eq
        fun n =>
        show _ = encode (decodeSum n) by
          simp only [decodeSum]
          cases Nat.bodd n <;> simp
          · cases @decode α _ n.div2 <;> rfl
          · cases @decode β _ n.div2 <;> rfl⟩

end Primcodable

namespace Primrec

variable {α : Type*} {β : Type*} {γ : Type*} {σ : Type*}
variable [Primcodable α] [Primcodable β] [Primcodable γ] [Primcodable σ]


```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant5344925eaac8f4986fcddd987ba85da3489b2daad2041d4d43ed15b1075f02e3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant5344925eaac8f4986fcddd987ba85da3489b2daad2041d4d43ed15b1075f02e3.lean#L751).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9110d826d1fb40ed5f4b187ea47afb758314131e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
