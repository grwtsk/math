# Proof.format

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:1b9e0349fa4432b5aa7dfd027c2417079da5b4a6f8244eec7f9276a23d4deb76",
  "kind": "def",
  "lexical_name": "Proof.format",
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
  "slug": "proof-format--b1d1dbbb4cc141d37cdf575d",
  "source": {
    "blob": "042badf4019c528ad72566c87f4f9abf15b3fbf3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 263,
    "line": 242,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ITauto/Variantae34c93e4de66c745f4d0b1c660fb12e73cfd5c0f9edc81b9cf2469d1a62b9b5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:b1d1dbbb4cc141d37cdf575d65e03d2788cd94fa79099507cb0aad7dbf7606cd",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ITauto/Variantae34c93e4de66c745f4d0b1c660fb12e73cfd5c0f9edc81b9cf2469d1a62b9b5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:1b9e0349fa4432b5aa7dfd027c2417079da5b4a6f8244eec7f9276a23d4deb76`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 242–263.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def Proof.format : Proof → Std.Format
  | .sorry => "sorry"
  | .hyp i => Std.format i
  | .triv => "triv"
  | .exfalso' p => f!"(exfalso {p.format})"
  | .intro x p => f!"(fun {x} ↦ {p.format})"
  | .andLeft _ p => f!"{p.format} .1"
  | .andRight _ p => f!"{p.format} .2"
  | .andIntro _ p q => f!"⟨{p.format}, {q.format}⟩"
  | .curry _ p => f!"(curry {p.format})"
  | .curry₂ _ p q => f!"(curry {p.format} {q.format})"
  | .app' p q => f!"({p.format} {q.format})"
  | .orImpL p => f!"(orImpL {p.format})"
  | .orImpR p => f!"(orImpR {p.format})"
  | .orInL p => f!"(Or.inl {p.format})"
  | .orInR p => f!"(Or.inr {p.format})"
  | .orElim' p x q r => f!"({p.format}.elim (fun {x} ↦ {q.format}) (fun {x} ↦ {r.format})"
  | .em false p => f!"(Decidable.em {p})"
  | .em true p => f!"(Classical.em {p})"
  | .decidableElim _ p x q r => f!"({p}.elim (fun {x} ↦ {q.format}) (fun {x} ↦ {r.format})"
  | .impImpSimp _ p => f!"(impImpSimp {p.format})"

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ITauto/Variantae34c93e4de66c745f4d0b1c660fb12e73cfd5c0f9edc81b9cf2469d1a62b9b5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ITauto/Variantae34c93e4de66c745f4d0b1c660fb12e73cfd5c0f9edc81b9cf2469d1a62b9b5.lean#L242).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `042badf4019c528ad72566c87f4f9abf15b3fbf3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
