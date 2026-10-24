# KaehlerDifferential.kerTotal

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:69d10643ba15edf3ac6f0a94193df52e5ac1c43108ba6bb954c8a6d9895a4d40",
  "kind": "def",
  "lexical_name": "KaehlerDifferential.kerTotal",
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
  "slug": "kaehlerdifferential-kertotal--6f3f304968ab5979b96fc53d",
  "source": {
    "blob": "a4dd5e434af9d53d19da48a4a31bc630194ee4a1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 467,
    "line": 456,
    "path": "GRWTSK/Algebra/Kaehler/Variant7ee200c341d3626f7d07a30f3a06f06ef9c2865916d338695a29f471f0bd5f6b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:6f3f304968ab5979b96fc53d8ba0594f8aa1d82148bb269a40ad18159629216c",
  "verification": {
    "reference": "docs/verification/Algebra/Kaehler/Variant7ee200c341d3626f7d07a30f3a06f06ef9c2865916d338695a29f471f0bd5f6b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:69d10643ba15edf3ac6f0a94193df52e5ac1c43108ba6bb954c8a6d9895a4d40`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 456–467.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def KaehlerDifferential.kerTotal : Submodule S (S →₀ S) :=
  Submodule.span S
    (((Set.range fun x : S × S => single x.1 1 + single x.2 1 - single (x.1 + x.2) 1) ∪
        Set.range fun x : S × S => single x.2 x.1 + single x.1 x.2 - single (x.1 * x.2) 1) ∪
      Set.range fun x : R => single (algebraMap R S x) 1)
#align kaehler_differential.ker_total KaehlerDifferential.kerTotal

-- Porting note: was `local notation x "𝖣" y => (KaehlerDifferential.kerTotal R S).mkQ (single y x)`
-- but `notation3` wants an explicit expansion to be able to generate a pretty printer.
local notation3 x "𝖣" y =>
  FunLike.coe (Submodule.mkQ (KaehlerDifferential.kerTotal R S)) (single y x)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Kaehler/Variant7ee200c341d3626f7d07a30f3a06f06ef9c2865916d338695a29f471f0bd5f6b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Kaehler/Variant7ee200c341d3626f7d07a30f3a06f06ef9c2865916d338695a29f471f0bd5f6b.lean#L456).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a4dd5e434af9d53d19da48a4a31bc630194ee4a1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
