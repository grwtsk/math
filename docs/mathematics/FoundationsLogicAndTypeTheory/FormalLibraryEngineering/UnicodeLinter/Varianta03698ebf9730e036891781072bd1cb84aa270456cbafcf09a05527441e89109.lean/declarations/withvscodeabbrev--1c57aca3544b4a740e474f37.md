# withVSCodeAbbrev

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a7f88268abbfb60b4f29f2bbd3b1ac542961960ebee395de63b09b80f2ed084c",
  "kind": "def",
  "lexical_name": "withVSCodeAbbrev",
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
  "slug": "withvscodeabbrev--1c57aca3544b4a740e474f37",
  "source": {
    "blob": "d973e241ec25888f7f0dc75bfcf83df63f05fc97",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 163,
    "line": 66,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/UnicodeLinter/Varianta03698ebf9730e036891781072bd1cb84aa270456cbafcf09a05527441e89109.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:1c57aca3544b4a740e474f378446b35e4934e1ba7f86d4711d3056b094cdf865",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/UnicodeLinter/Varianta03698ebf9730e036891781072bd1cb84aa270456cbafcf09a05527441e89109.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:a7f88268abbfb60b4f29f2bbd3b1ac542961960ebee395de63b09b80f2ed084c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 66–163.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def withVSCodeAbbrev : Array Char := #[
  '⦃', '⦄', '⟦', '⟧', '⟨', '⟩', '⁽', '⁾', '₍', '₎', '⟮', '⟯', '⸨', '⸩', '‹', '›',
  '«', '»', '❰', '❱', '⁅', '⁆', '‖', '₊', '⌊', '⌋', '⌈', '⌉', '⦋', '⦌', 'α', 'β',
  'χ', '↓', 'ε', 'γ', '∩', 'μ', '∘', 'Π', '▸', '→', '↑', '∨', '×', '⁻', '¹', '∼',
  '·', '⋆', '¬', '¿', '₁', '₂', '₃', '₄', '₅', '₆', '₇', '₈', '₉', '₀', '←', 'Ø',
  '⅋', '𝔸', 'ℂ', 'Δ', '𝔽', 'Γ', 'ℍ', '⋂', '𝕂', 'Λ', 'ℕ', 'ℚ', 'ℝ', 'Σ', '⋃', 'ℤ',
  '♯', '∶', '∣', 'δ', 'ζ', 'η', 'θ', 'ι', 'κ', 'λ', 'ν', 'ξ', 'π', 'ρ', 'ς', 'σ',
  'τ', 'φ', 'ψ', 'ω', 'À', 'Á', 'Â', 'Ã', 'Ä', 'Ā', 'Ç', 'È', 'É', 'Ê', 'Ë', 'Ē',
  'Ì', 'Í', 'Î', 'Ï', 'Ī', 'Ñ', 'Ò', 'Ó', 'Ô', 'Õ', 'Ö', 'Ō', 'Ù', 'Ú', 'Û', 'Ü',
  'Ū', 'Ý', 'à', 'á', 'â', 'ã', 'ä', 'ā', 'ç', 'è', 'é', 'ê', 'ë', 'ē', 'ì', 'í',
  'î', 'ï', 'ī', 'ñ', 'ò', 'ó', 'ô', 'õ', 'ö', 'ø', 'ō', 'ù', 'ú', 'û', 'ü', 'ū',
  'ý', 'ÿ', 'Ł', '♩', '∉', '≮', '𐆎', '∌', '∋', '⟹', '♮', '₦', '∇', '≉', '№', '⇍',
  '⇎', '⇏', '⊯', '⊮', '≇', '↗', '≢', '≠', '∄', '≱', '≯', '↚', '↮', '≰', '∤', '∦',
  '⋠', '⊀', '↛', '≄', '≁', '⊈', '⊄', '⋡', '⊁', '⊉', '⊅', '⋬', '⋪', '⋭', '⋫', '⊭',
  '⊬', '↖', '≃', '≖', '≕', '⋝', '⋜', '⊢', '–', '∃', '∅', '—', '€', 'ℓ', '≅', '∈',
  '⊺', '∫', '⨍', '∆', '⊓', '⨅', '∞', '↔', 'ı', '≣', '≡', '≗', '⇒', '≋', '≊', '≈',
  '⟶', 'ϩ', '↩', '↪', '₴', 'ͱ', '♥', 'ℏ', '⦂', '∻', '≔', '∺', '∷', '≂', '⊣', '²',
  '³', '∹', '─', '═', '━', '╌', '⊸', '≑', '≐', '∔', '∸', '⋯', '≘', '⟅', '≙', '∧',
  '∠', '∟', 'Å', '∀', 'ᶠ', 'ᵐ', 'ℵ', '⁎', '∗', '≍', '⌶', 'å', 'æ', '₳', '∐', '≚',
  'ª', 'º', '⊕', 'ᵒ', 'ᵈ', 'ᵃ', 'ᵖ', '⊖', '⊝', '⊗', '⊘', '⊙', '⊚', '⊜', 'œ', '🛑',
  'Ω', '℥', 'ο', '∮', '∯', '⨂', '∂', '≛', '≜', '▹', '▿', '⊴', '◃', '⊵', '▵', '⬝',
  '◂', '↞', '↠', '⁀', '∴', '℡', '₸', '♪', 'µ', '⁄', '฿', '✝', '⁒', '₡', '℗', '₩',
  '₱', '‱', '₤', '℞', '※', '‽', '℮', '◦', '₮', '⊤', 'ₛ', 'ₐ', 'ᵇ', 'ₗ', 'ₘ', 'ₚ',
  '⇨', '￢', '⋖', '⩿', '≝', '°', 'ϯ', '⊡', '₫', '⇊', '⇃', '⇂', '↘', '⇘', '₯', '↙',
  '⇙', '⇵', '↧', '⟱', '⇓', '↡', '‡', '⋱', '↯', '◆', '◇', '◈', '⚀', '÷', '⋇', '⌀',
  '♢', '⋄', 'ϝ', '†', 'ℸ', 'ð', '≞', '∡', '↦', '♂', '✠', '₼', 'ℐ', '−', '₥', '℧',
  '⊧', '∓', '≟', '⁇', '🛇', '∏', '∝', '≾', '≼', '⋨', '≺', '′', '↣', '𝒫', '£', '▰',
  '▱', '㉐', '¶', '∥', '±', '⟂', 'ᗮ', '‰', '⅌', '₧', '⋔', '≦', '≤', '↝', '↢', '↽',
  '↼', '⇇', '⇆', '⇋', '↭', '⋋', '≲', '⋚', '≶', '⊔', '⟷', '⇔', '⌟', '⟵', '↤', '⇚',
  '⇐', '↜', '⌞', '〚', '≪', '₾', '…', '“', '《', '⧏', '◁', '⋦', '≨', '↫', '↬', '✧',
  '‘', '⋉', '≧', '≥', '„', '‚', '₲', 'ϫ', '⋙', '≫', 'ℷ', '⋧', '≩', '≳', '⋗', '⋛',
  '≷', '≴', '⟪', '≵', '⟫', '√', '✂', '⊂', '⊃', '⊏', '⊐', '⊆', '⊊', '⊇', '⊋', '⨆',
  '∛', '∜', '≿', '≽', '⋩', '≻', '∑', '⤳', '⋢', '⊑', '⋣', '⊒', '□', '⇝', '■', '▣',
  '▢', '◾', '✦', '✶', '✴', '✹', 'ϛ', '₷', '∙', '♠', '∢', '§', 'ϻ', 'ϡ', 'ϸ', 'ϭ',
  'ϣ', '﹨', '∖', '⌣', '•', '◀', 'Τ', 'Θ', 'Þ', '∪', '‿', '⯑', '⊎', '⊍', '↨', '↕',
  '⇕', '⇖', '⌜', '⇗', '⌝', '⇈', '⇅', '↥', '⟰', '⇑', '↟', 'υ', '↿', '↾', '⋀', 'Å',
  'Æ', 'Α', '⋁', '⨁', '⨀', '⍟', 'Œ', 'Ω', 'Ο', 'Ι', 'ℑ', '⨄', '⨃', 'Υ', 'ƛ', 'Ϫ',
  'Β', 'Ε', 'Ζ', 'Κ', 'Μ', 'Ν', 'Ξ', 'Ρ', 'Φ', 'Χ', 'Ψ', '✉', '⋘', '↰', '⊨', '⇰',
  '⊩', '⊫', '⊪', '⋒', '⋓', '¤', '⋞', '⋟', '⋎', '⋏', '↶', '↷', '♣', '🚧', 'ᶜ', '∁',
  '©', '●', '○', '◌', '◎', '◯', '↺', '↻', '®', 'Ⓢ', '⊛', '¢', '₵', '℃', 'ȩ', '✓',
  '₢', '☡', '∎', '⧸', '⊹', '⊞', '⊟', '⊠', '¦', 'ℙ', '𝔹', '⅀', '𝟘', '𝟙', '𝟚', '𝟛',
  '𝟜', '𝟝', '𝟞', '𝟟', '𝟠', '𝟡', '𝟬', '𝟭', '𝟮', '𝟯', '𝟰', '𝟱', '𝟲', '𝟳', '𝟴', '𝟵',
  '‣', '≏', '☣', '★', '▽', '△', 'ℶ', '≬', '∵', '≌', '∍', '‵', '⋍', '∽', '⊼', '▪',
  '☻', '▾', '▴', '⊥', '⋈', '◫', '⇉', '⇶', '⇄', '⇛', '▬', '▭', '⟆', '☢', '〛', '’',
  '⇁', '⇀', '⇌', '⋌', '≓', '₽', '₨', '▷', '⋊', '”', '》', '⥤', '½', '⅓', '¼', '⅕',
  '⅙', '⅛', '⅟', '⅔', '⅖', '¾', '⅗', '⅜', '⅘', '⅚', '⅝', '⅞', '⌢', '♀', 'ϥ', '℻',
  '≒', '♭', 'ℜ', '↱', 'Ϥ', '☹', 'Ϩ', 'Ͱ', 'Ϧ', 'Ϟ', 'ᵉ', 'ᵍ', 'ʰ', 'ⁱ', 'ʲ', 'ᵏ',
  'ˡ', 'ⁿ', 'ʳ', 'ˢ', 'ᵗ', 'ᵘ', 'ᵛ', 'ʷ', 'ˣ', 'ʸ', 'ᶻ', 'ᴬ', 'ᴮ', 'ᴰ', 'ᴱ', 'ᴳ',
  'ᴴ', 'ᴵ', 'ᴶ', 'ᴷ', 'ᴸ', 'ᴹ', 'ᴺ', 'ᴼ', 'ᴾ', 'ᴿ', 'ᵀ', 'ᵁ', 'ⱽ', 'ᵂ', '⁰', '⁴',
  '⁵', '⁶', '⁷', '⁸', '⁹', '⁼', '⁺', 'ꭟ', 'ᶶ', 'ᶷ', 'ꭞ', 'ꭝ', 'ᶪ', 'ᶩ', 'ꟹ', 'ꭜ',
  'ʱ', 'ꟸ', 'ᶿ', 'ᶺ', 'ᶭ', 'ᵚ', 'ᶣ', 'ᶛ', 'ᵆ', 'ᵄ', 'ᵎ', 'ᵌ', 'ʵ', 'ʴ', 'ᶵ', 'ᵔ',
  'ᶾ', 'ᶴ', 'ᶞ', 'ᵑ', 'ᶽ', 'ᶼ', 'ᶹ', 'ᶦ', 'ᶫ', 'ᶰ', 'ᶸ', 'ᶧ', 'ʶ', 'ᶝ', 'ᵡ', 'ᶳ',
  'ᶢ', 'ᵊ', 'ᵙ', 'ᶲ', 'ᶱ', 'ᵝ', 'ᵕ', 'ᶯ', 'ᶮ', 'ᶬ', 'ᶨ', 'ᶥ', 'ᶤ', 'ᶟ', 'ˤ', 'ᵠ',
  'ᵞ', 'ˠ', 'ᵜ', 'ᵅ', 'ᵓ', 'ᵋ', 'ᴽ', 'ᴻ', 'ᴲ', 'ᴯ', 'ᴭ', '℠', '™', 'ₑ', 'ₕ', 'ᵢ',
  'ⱼ', 'ₖ', 'ₙ', 'ₒ', 'ᵣ', 'ₜ', 'ᵤ', 'ᵥ', 'ₓ', '₌', '₋', '‼', '⁉', 'Ϻ', 'Ϡ', 'Ϸ',
  'Ϭ', 'Ϣ', 'Ϛ', '⋐', '⋑', '☺', '𝐀', '𝐁', '𝐂', '𝐃', '𝐄', '𝐅', '𝐆', '𝐇', '𝐈', '𝐉',
  '𝐊', '𝐋', '𝐌', '𝐍', '𝐎', '𝐏', '𝐐', '𝐑', '𝐒', '𝐓', '𝐔', '𝐕', '𝐖', '𝐗', '𝐘', '𝐙',
  '𝐚', '𝐛', '𝐜', '𝐝', '𝐞', '𝐟', '𝐠', '𝐡', '𝐢', '𝐣', '𝐤', '𝐥', '𝐦', '𝐧', '𝐨', '𝐩',
  '𝐪', '𝐫', '𝐬', '𝐭', '𝐮', '𝐯', '𝐰', '𝐱', '𝐲', '𝐳', '𝐴', '𝐵', '𝐶', '𝐷', '𝐸', '𝐹',
  '𝐺', '𝐻', '𝐼', '𝐽', '𝐾', '𝐿', '𝑀', '𝑁', '𝑂', '𝑃', '𝑄', '𝑅', '𝑆', '𝑇', '𝑈', '𝑉',
  '𝑊', '𝑋', '𝑌', '𝑍', '𝑎', '𝑏', '𝑐', '𝑑', '𝑒', '𝑓', '𝑔', '𝑖', '𝑗', '𝑘', '𝑙', '𝑚',
  '𝑛', '𝑜', '𝑝', '𝑞', '𝑟', '𝑠', '𝑡', '𝑢', '𝑣', '𝑤', '𝑥', '𝑦', '𝑧', '𝑨', '𝑩', '𝑪',
  '𝑫', '𝑬', '𝑭', '𝑮', '𝑯', '𝑰', '𝑱', '𝑲', '𝑳', '𝑴', '𝑵', '𝑶', '𝑷', '𝑸', '𝑹', '𝑺',
  '𝑻', '𝑼', '𝑽', '𝑾', '𝑿', '𝒀', '𝒁', '𝒂', '𝒃', '𝒄', '𝒅', '𝒆', '𝒇', '𝒈', '𝒉', '𝒊',
  '𝒋', '𝒌', '𝒍', '𝒎', '𝒏', '𝒐', '𝒑', '𝒒', '𝒓', '𝒔', '𝒕', '𝒖', '𝒗', '𝒘', '𝒙', '𝒚',
  '𝒛', '𝒜', 'ℬ', '𝒞', '𝒟', 'ℰ', 'ℱ', '𝒢', 'ℋ', '𝒥', '𝒦', 'ℒ', 'ℳ', '𝒩', '𝒪', '𝒬',
  'ℛ', '𝒮', '𝒯', '𝒰', '𝒱', '𝒲', '𝒳', '𝒴', '𝒵', '𝒶', '𝒷', '𝒸', '𝒹', 'ℯ', '𝒻', 'ℊ',
  '𝒽', '𝒾', '𝒿', '𝓀', '𝓁', '𝓂', '𝓃', 'ℴ', '𝓅', '𝓆', '𝓇', '𝓈', '𝓉', '𝓊', '𝓋', '𝓌',
  '𝓍', '𝓎', '𝓏', '𝓐', '𝓑', '𝓒', '𝓓', '𝓔', '𝓕', '𝓖', '𝓗', '𝓘', '𝓙', '𝓚', '𝓛', '𝓜',
  '𝓝', '𝓞', '𝓟', '𝓠', '𝓡', '𝓢', '𝓣', '𝓤', '𝓥', '𝓦', '𝓧', '𝓨', '𝓩', '𝓪', '𝓫', '𝓬',
  '𝓭', '𝓮', '𝓯', '𝓰', '𝓱', '𝓲', '𝓳', '𝓴', '𝓵', '𝓶', '𝓷', '𝓸', '𝓹', '𝓺', '𝓻', '𝓼',
  '𝓽', '𝓾', '𝓿', '𝔀', '𝔁', '𝔂', '𝔃', '𝔄', '𝔅', 'ℭ', '𝔇', '𝔈', '𝔉', '𝔊', 'ℌ', '𝔍',
  '𝔎', '𝔏', '𝔐', '𝔑', '𝔒', '𝔓', '𝔔', '𝔖', '𝔗', '𝔘', '𝔙', '𝔚', '𝔛', '𝔜', 'ℨ', '𝔞',
  '𝔟', '𝔠', '𝔡', '𝔢', '𝔣', '𝔤', '𝔥', '𝔦', '𝔧', '𝔨', '𝔩', '𝔪', '𝔫', '𝔬', '𝔭', '𝔮',
  '𝔯', '𝔰', '𝔱', '𝔲', '𝔳', '𝔴', '𝔵', '𝔶', '𝔷', '¥', 'ϱ', 'ϰ', 'ϗ', 'ϖ', 'ϕ', 'ϑ',
  '⊲', '⊳', 'ϐ', '⊻', 'ě', 'Ě', '⋮', 'ď', 'Ď', 'č', 'Č', 'ϟ', '₭', 'į', 'Į', 'K',
  'ϧ', '⚠', '℘', '≀', 'Ϯ', 'Ϝ', 'Ð', 'Η', '≎', '𝔻', '𝔼', '𝔾', '𝕀', '𝕁', '𝕃', '𝕄',
  '𝕆', '𝕊', '𝕋', '𝕌', '𝕍', '𝕎', '𝕏', '𝕐', '𝕒', '𝕓', '𝕔', '𝕕', '𝕖', '𝕗', '𝕘', '𝕙',
  '𝕚', '𝕛', '𝕜', '𝕝', '𝕞', '𝕟', '𝕠', '𝕡', '𝕢', '𝕣', '𝕤', '𝕥', '𝕦', '𝕧', '𝕨', '𝕩',
  '𝕪', '𝕫', '⨯', '⨿', 'Ϳ', '⧾', '⧿', '¡'
]

/--
Other unicode characters present in Mathlib but not present in any of the above lists
(as of August 8, 2026).

This list may be extended by more characters for which no VSCode-extension abbreviation exists.
Some guidelines:
- No invisible characters
- No characters affecting text directionality (Mathlib uses left-to-right text).
- No [Private Use Areas](https://en.wikipedia.org/wiki/Private_Use_Areas)

The list `withVSCodeAbbrev` contains characters with abbreviations; if an abbreviation
already has been defined, you might need to update the list `withVSCodeAbbrev`.
Further, consider proposing an abbreviation to [the extension](https://github.com/leanprover/vscode-lean4) for new symbols.

Empty lines for improved readability (otherwise some characters overlap in some fonts).
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/UnicodeLinter/Varianta03698ebf9730e036891781072bd1cb84aa270456cbafcf09a05527441e89109.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/UnicodeLinter/Varianta03698ebf9730e036891781072bd1cb84aa270456cbafcf09a05527441e89109.lean#L66).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d973e241ec25888f7f0dc75bfcf83df63f05fc97` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
